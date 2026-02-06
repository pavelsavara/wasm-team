<#
.SYNOPSIS
    Compares test results between two Helix runs.

.DESCRIPTION
    This script loads testResults.xml from baseline and target run folders,
    compares them, and outputs a JSON file with the comparison results.

.PARAMETER TestProjectName
    The name of the test project (e.g., Microsoft.Extensions.FileProviders.Physical.Tests).

.PARAMETER BaselineRunName
    The name of the baseline run folder (e.g., Baseline).

.PARAMETER TargetRunName
    The name of the target run folder (e.g., CoreCLR).

.EXAMPLE
    .\Compare-TestResults.ps1 -TestProjectName Microsoft.Extensions.FileProviders.Physical.Tests -BaselineRunName Baseline -TargetRunName CoreCLR
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$TestProjectName,

    [Parameter(Mandatory = $true, Position = 1)]
    [string]$BaselineRunName,

    [Parameter(Mandatory = $true, Position = 2)]
    [string]$TargetRunName,

    [Parameter()]
    [switch]$Silent
)

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Detect runtime root - current directory should be runtime repo
$RepoRoot = Get-Location
if (-not (Test-Path "$RepoRoot\build.sh") -or -not (Test-Path "$RepoRoot\src\libraries")) {
    Write-Error "This script must be run from the root of a runtime repository.`nUsage: cd \path\to\runtime; $ScriptDir\Compare-TestResults.ps1 <TestProjectName> <BaselineRunName> <TargetRunName>"
    exit 1
}

$BaselineDir = Join-Path $RepoRoot "artifacts\browser-runs\$BaselineRunName\$TestProjectName"
$TargetDir = Join-Path $RepoRoot "artifacts\browser-runs\$TargetRunName\$TestProjectName"
$BaselineResultsPath = Join-Path $BaselineDir "testResults.xml"
$TargetResultsPath = Join-Path $TargetDir "testResults.xml"
$OutputPath = Join-Path $TargetDir "$BaselineRunName-vs-$TargetRunName.json"

# Check if comparison already exists
if (Test-Path $OutputPath) {
    if (-not $Silent) {
        Write-Host "✓ Comparison already exists: $TestProjectName"
    }
    exit 0
}

# Check files exist
if (-not (Test-Path $BaselineResultsPath)) {
    Write-Error "Baseline test results not found: $BaselineResultsPath"
    exit 1
}
if (-not (Test-Path $TargetResultsPath)) {
    Write-Error "Target test results not found: $TargetResultsPath"
    exit 1
}

if (-not $Silent) {
    Write-Host "Comparing test results for: $TestProjectName"
    Write-Host "  Baseline: $BaselineRunName"
    Write-Host "  Target:   $TargetRunName"
    Write-Host ""
}

# Function to parse xUnit XML and extract test info
function Get-TestResults {
    param([string]$XmlPath)
    
    [xml]$xml = Get-Content $XmlPath
    $assembly = $xml.assemblies.assembly
    
    $results = @{
        Total = [int]$assembly.total
        Passed = [int]$assembly.passed
        Failed = [int]$assembly.failed
        Skipped = [int]$assembly.skipped
        Time = [double]$assembly.time
        Tests = @{}
        FailedTests = @{}
    }
    
    # Parse all tests across all collections
    foreach ($collection in $assembly.collection) {
        foreach ($test in $collection.test) {
            $testName = $test.name
            $testResult = $test.result
            $testTime = [double]$test.time
            
            $results.Tests[$testName] = @{
                Result = $testResult
                Time = $testTime
            }
            
            # Track failed tests with their exception type
            if ($testResult -eq "Fail" -and $test.failure) {
                $exceptionType = $test.failure.'exception-type'
                $results.FailedTests[$testName] = @{
                    ExceptionType = $exceptionType
                    Message = $test.failure.message
                }
            }
        }
    }
    
    return $results
}

if (-not $Silent) { Write-Host "Loading baseline results..." }
$baseline = Get-TestResults -XmlPath $BaselineResultsPath
if (-not $Silent) { Write-Host "  Found $($baseline.Total) tests ($($baseline.Passed) passed, $($baseline.Failed) failed, $($baseline.Skipped) skipped)" }

if (-not $Silent) { Write-Host "Loading target results..." }
$target = Get-TestResults -XmlPath $TargetResultsPath
if (-not $Silent) { Write-Host "  Found $($target.Total) tests ($($target.Passed) passed, $($target.Failed) failed, $($target.Skipped) skipped)" }

# Compare tests using hashtables for O(1) lookups (critical for large test suites)
if (-not $Silent) { Write-Host "Comparing test results..." }

$baselineSet = @{}
$baseline.Tests.Keys | ForEach-Object { $baselineSet[$_] = $true }
$targetSet = @{}
$target.Tests.Keys | ForEach-Object { $targetSet[$_] = $true }

# Tests only in baseline (removed in target)
$removedTests = [System.Collections.Generic.List[string]]::new()
# Tests only in target (added in target)
$addedTests = [System.Collections.Generic.List[string]]::new()
# Regressions: passed in baseline, failed in target
$regressions = [System.Collections.Generic.List[string]]::new()
# Fixes: failed in baseline, passed in target
$fixes = [System.Collections.Generic.List[string]]::new()

foreach ($testName in $baseline.Tests.Keys) {
    if (-not $targetSet.ContainsKey($testName)) {
        $removedTests.Add($testName)
    }
    else {
        $baselineResult = $baseline.Tests[$testName].Result
        $targetResult = $target.Tests[$testName].Result
        
        if ($baselineResult -eq "Pass" -and $targetResult -eq "Fail") {
            $regressions.Add($testName)
        }
        elseif ($baselineResult -eq "Fail" -and $targetResult -eq "Pass") {
            $fixes.Add($testName)
        }
    }
}

foreach ($testName in $target.Tests.Keys) {
    if (-not $baselineSet.ContainsKey($testName)) {
        $addedTests.Add($testName)
    }
}

# Collect exception types with counts from both runs
$exceptionTypeCounts = @{}
$baseline.FailedTests.Values | ForEach-Object { $_.ExceptionType } | Where-Object { $_ } | ForEach-Object {
    if ($exceptionTypeCounts.ContainsKey($_)) { $exceptionTypeCounts[$_]++ } else { $exceptionTypeCounts[$_] = 1 }
}
$target.FailedTests.Values | ForEach-Object { $_.ExceptionType } | Where-Object { $_ } | ForEach-Object {
    if ($exceptionTypeCounts.ContainsKey($_)) { $exceptionTypeCounts[$_]++ } else { $exceptionTypeCounts[$_] = 1 }
}
# Convert to array of arrays [name, count] sorted by count descending
$uniqueExceptionTypes = @($exceptionTypeCounts.GetEnumerator() | Sort-Object Value -Descending | ForEach-Object { ,@($_.Key, $_.Value) })

# Helper function to strip test parameters and get unique method names
function Get-UniqueMethodNames {
    param([array]$TestNames)
    $methodNames = $TestNames | ForEach-Object { $_ -replace '\(.*\)$', '' }
    return @($methodNames | Sort-Object -Unique)
}

# Get unique method names (without parameters)
$uniqueRegressions = Get-UniqueMethodNames -TestNames @($regressions)
$uniqueFixes = Get-UniqueMethodNames -TestNames @($fixes)
$uniqueAddedTests = Get-UniqueMethodNames -TestNames @($addedTests)
$uniqueRemovedTests = Get-UniqueMethodNames -TestNames @($removedTests)

# Build comparison object
$comparison = [ordered]@{
    baselineName = $BaselineRunName
    targetName = $TargetRunName
    suiteName = $TestProjectName
    baselineTotalTime = $baseline.Time
    targetTotalTime = $target.Time
    baselineTotalTests = $baseline.Total
    targetTotalTests = $target.Total
    baselineFailedTests = $baseline.Failed
    targetFailedTests = $target.Failed
    baselinePassedTests = $baseline.Passed
    targetPassedTests = $target.Passed
    baselineSkippedTests = $baseline.Skipped
    targetSkippedTests = $target.Skipped
    uniqueExceptionTypes = $uniqueExceptionTypes
    regressions = $uniqueRegressions
    fixes = $uniqueFixes
    addedTests = $uniqueAddedTests
    removedTests = $uniqueRemovedTests
}

# Write output JSON
$comparison | ConvertTo-Json -Depth 10 | Out-File -FilePath $OutputPath -Encoding UTF8

if (-not $Silent) {
    Write-Host ""
    Write-Host "Comparison Summary:"
    Write-Host "  Time: $($baseline.Time)s (baseline) vs $($target.Time)s (target)"
    Write-Host "  Regressions (passed->failed): $($uniqueRegressions.Count) unique methods"
    Write-Host "  Fixes (failed->passed): $($uniqueFixes.Count) unique methods"
    Write-Host "  Added tests: $($uniqueAddedTests.Count) unique methods"
    Write-Host "  Removed tests: $($uniqueRemovedTests.Count) unique methods"
    Write-Host "  Unique exception types: $($uniqueExceptionTypes.Count)"
    Write-Host ""
    Write-Host "✓ Comparison saved to: $OutputPath"
}
