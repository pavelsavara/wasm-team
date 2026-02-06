<#
.SYNOPSIS
    Compares all test suites between two Helix runs.

.DESCRIPTION
    This script compares all test suites between baseline and target runs,
    generates individual suite comparisons, and produces a markdown report.

.PARAMETER BaselineRunName
    The name of the baseline run folder (e.g., Baseline).

.PARAMETER TargetRunName
    The name of the target run folder (e.g., CoreCLR).

.PARAMETER MaxParallel
    Maximum number of parallel comparisons (default: 10).

.EXAMPLE
    .\Compare-HelixRuns.ps1 -BaselineRunName Baseline -TargetRunName CoreCLR
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$BaselineRunName,

    [Parameter(Mandatory = $true, Position = 1)]
    [string]$TargetRunName,

    [Parameter()]
    [int]$MaxParallel = 10
)

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$CompareScript = Join-Path $ScriptDir "Compare-TestSuiteResults.ps1"

# Detect runtime root - current directory should be runtime repo
$RepoRoot = Get-Location
if (-not (Test-Path "$RepoRoot\build.sh") -or -not (Test-Path "$RepoRoot\src\libraries")) {
    Write-Error "This script must be run from the root of a runtime repository.`nUsage: cd \path\to\runtime; $ScriptDir\Compare-HelixRuns.ps1 <BaselineRunName> <TargetRunName>"
    exit 1
}

# Check compare script exists
if (-not (Test-Path $CompareScript)) {
    Write-Error "Compare script not found: $CompareScript"
    exit 1
}

$BaselineDir = Join-Path $RepoRoot "artifacts\browser-runs\$BaselineRunName"
$TargetDir = Join-Path $RepoRoot "artifacts\browser-runs\$TargetRunName"
$BrowserRunsDir = Join-Path $RepoRoot "artifacts\browser-runs"

# Check directories exist
if (-not (Test-Path $BaselineDir)) {
    Write-Error "Baseline run directory not found: $BaselineDir"
    exit 1
}
if (-not (Test-Path $TargetDir)) {
    Write-Error "Target run directory not found: $TargetDir"
    exit 1
}

# Get timestamp for output file
$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$OutputPath = Join-Path $BrowserRunsDir "$BaselineRunName-vs-$TargetRunName-$timestamp.md"

Write-Host "Comparing Helix runs:"
Write-Host "  Baseline: $BaselineRunName"
Write-Host "  Target:   $TargetRunName"
Write-Host "  Output:   $OutputPath"
Write-Host ""

# Find all test suites that exist in both runs
$baselineSuites = Get-ChildItem -Path $BaselineDir -Directory | Select-Object -ExpandProperty Name
$targetSuites = Get-ChildItem -Path $TargetDir -Directory | Select-Object -ExpandProperty Name
$commonSuites = @($baselineSuites | Where-Object { $_ -in $targetSuites })

Write-Host "Found $($commonSuites.Count) common test suites"
Write-Host "Parallel comparisons: $MaxParallel"
Write-Host ""

# Run comparisons in parallel
Write-Host "Running suite comparisons..."
$results = $commonSuites | ForEach-Object -ThrottleLimit $MaxParallel -Parallel {
    $suite = $_
    $compareScript = $using:CompareScript
    $baselineRunName = $using:BaselineRunName
    $targetRunName = $using:TargetRunName
    $repoRoot = $using:RepoRoot
    
    try {
        Set-Location $repoRoot
        $output = & $compareScript -TestProjectName $suite -BaselineRunName $baselineRunName -TargetRunName $targetRunName -Silent 2>&1
        
        # Load the generated JSON
        $jsonPath = Join-Path $repoRoot "artifacts\browser-runs\$targetRunName\$suite\$baselineRunName-vs-$targetRunName.json"
        if (Test-Path $jsonPath) {
            $json = Get-Content $jsonPath | ConvertFrom-Json
            Write-Host "✓ $suite"
            return @{ Suite = $suite; Status = "success"; Data = $json }
        }
        else {
            Write-Host "✗ $suite (no JSON output)"
            return @{ Suite = $suite; Status = "failed"; Error = "No JSON output" }
        }
    }
    catch {
        Write-Host "✗ $suite"
        return @{ Suite = $suite; Status = "failed"; Error = $_.ToString() }
    }
}

# Collect successful results
$successResults = @($results | Where-Object { $_.Status -eq "success" })
$failedResults = @($results | Where-Object { $_.Status -eq "failed" })

Write-Host ""
Write-Host "Comparison complete: $($successResults.Count) succeeded, $($failedResults.Count) failed"
Write-Host ""

# Sort by baseline time percentage (increasing - lowest percentage first)
$sortedResults = $successResults | Sort-Object { if ($_.Data.targetTotalTime -gt 0) { $_.Data.baselineTotalTime / $_.Data.targetTotalTime } else { 0 } }

# Calculate totals
$totalBaselineTime = ($successResults | ForEach-Object { $_.Data.baselineTotalTime } | Measure-Object -Sum).Sum
$totalTargetTime = ($successResults | ForEach-Object { $_.Data.targetTotalTime } | Measure-Object -Sum).Sum
$totalBaselineTests = ($successResults | ForEach-Object { $_.Data.baselineTotalTests } | Measure-Object -Sum).Sum
$totalTargetTests = ($successResults | ForEach-Object { $_.Data.targetTotalTests } | Measure-Object -Sum).Sum
$totalBaselinePassed = ($successResults | ForEach-Object { $_.Data.baselinePassedTests } | Measure-Object -Sum).Sum
$totalTargetPassed = ($successResults | ForEach-Object { $_.Data.targetPassedTests } | Measure-Object -Sum).Sum
$totalBaselineFailed = ($successResults | ForEach-Object { $_.Data.baselineFailedTests } | Measure-Object -Sum).Sum
$totalTargetFailed = ($successResults | ForEach-Object { $_.Data.targetFailedTests } | Measure-Object -Sum).Sum
$totalBaselineSkipped = ($successResults | ForEach-Object { $_.Data.baselineSkippedTests } | Measure-Object -Sum).Sum
$totalTargetSkipped = ($successResults | ForEach-Object { $_.Data.targetSkippedTests } | Measure-Object -Sum).Sum

# Collect all exception types with counts (new format: array of [name, count])
$exceptionTypeCounts = @{}
foreach ($result in $successResults) {
    if ($result.Data.uniqueExceptionTypes) {
        foreach ($item in $result.Data.uniqueExceptionTypes) {
            if ($item -is [array] -and $item.Count -ge 2) {
                $exType = $item[0]
                $count = $item[1]
                if ($exceptionTypeCounts.ContainsKey($exType)) {
                    $exceptionTypeCounts[$exType] += $count
                } else {
                    $exceptionTypeCounts[$exType] = $count
                }
            } elseif ($item -is [string]) {
                # Backward compatibility: old format was just string array
                if ($exceptionTypeCounts.ContainsKey($item)) {
                    $exceptionTypeCounts[$item]++
                } else {
                    $exceptionTypeCounts[$item] = 1
                }
            }
        }
    }
}
# Sort by count descending
$sortedExceptionTypes = @($exceptionTypeCounts.GetEnumerator() | Sort-Object Value -Descending)

# Collect regressions per suite
$regressionsPerSuite = @()
foreach ($result in $successResults) {
    if ($result.Data.regressions -and $result.Data.regressions.Count -gt 0) {
        $regressionsPerSuite += @{
            Suite = $result.Suite
            Regressions = $result.Data.regressions
        }
    }
}

# Collect added/removed tests
$addedTestsPerSuite = @()
$removedTestsPerSuite = @()
foreach ($result in $successResults) {
    if ($result.Data.addedTests -and $result.Data.addedTests.Count -gt 0) {
        $addedTestsPerSuite += @{
            Suite = $result.Suite
            Tests = $result.Data.addedTests
        }
    }
    if ($result.Data.removedTests -and $result.Data.removedTests.Count -gt 0) {
        $removedTestsPerSuite += @{
            Suite = $result.Suite
            Tests = $result.Data.removedTests
        }
    }
}

# Generate markdown report
Write-Host "Generating markdown report..."

$markdown = @"
# Helix Run Comparison: $BaselineRunName vs $TargetRunName

Generated: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")

## Summary

| Metric | $BaselineRunName | $TargetRunName | Difference |
|--------|------------------|----------------|------------|
| Total Time | $([math]::Round($totalBaselineTime, 2))s | $([math]::Round($totalTargetTime, 2))s | $(if ($totalBaselineTime -gt 0) { [math]::Round($totalTargetTime / $totalBaselineTime, 1) } else { 0 })x |
| Total Tests | $totalBaselineTests | $totalTargetTests | $($totalTargetTests - $totalBaselineTests) |
| Passed Tests | $totalBaselinePassed | $totalTargetPassed | $($totalTargetPassed - $totalBaselinePassed) |
| Failed Tests | $totalBaselineFailed | $totalTargetFailed | $($totalTargetFailed - $totalBaselineFailed) |
| Skipped Tests | $totalBaselineSkipped | $totalTargetSkipped | $($totalTargetSkipped - $totalBaselineSkipped) |
| Suites Compared | $($successResults.Count) | $($successResults.Count) | - |
| Suites Failed | $($failedResults.Count) | $($failedResults.Count) | - |

## Unique Exception Types

"@

if ($sortedExceptionTypes.Count -gt 0) {
    $markdown += "| Exception Type | Occurrences |`n"
    $markdown += "|----------------|-------------|`n"
    foreach ($item in $sortedExceptionTypes) {
        $markdown += "| ``$($item.Key)`` | $($item.Value) |`n"
    }
}
else {
    $markdown += "*No exceptions found*`n"
}

# Add test suites section
$markdown += @"

## Test Suites (sorted by baseline time %)

| Suite | $BaselineRunName Time | $TargetRunName Time | $BaselineRunName Tests | $TargetRunName Tests | $TargetRunName Failed |
|-------|---------------|-------------|----------------|--------------|---------------|

"@

foreach ($result in $sortedResults) {
    $d = $result.Data
    $shortSuite = $result.Suite -replace '^Microsoft\.', 'M.' -replace '^System\.', 'S.' -replace '\.Extensions\.', '.E.' -replace '\.Runtime\.', '.R.'
    $baselinePercent = if ($d.targetTotalTime -gt 0) { [math]::Round(($d.baselineTotalTime / $d.targetTotalTime) * 100) } else { 0 }
    $markdown += "| $shortSuite | ${baselinePercent}% | $([math]::Round($d.targetTotalTime, 2))s | $($d.baselineTotalTests) | $($d.targetTotalTests) | $($d.targetFailedTests) |`n"
}

# Add regressions section
$markdown += @"

## Regressions (Passed → Failed)

"@

if ($regressionsPerSuite.Count -gt 0) {
    $markdown += "| Suite | Test Method |`n"
    $markdown += "|-------|-------------|`n"
    foreach ($item in $regressionsPerSuite) {
        foreach ($test in $item.Regressions) {
            $markdown += "| $($item.Suite) | ``$test`` |`n"
        }
    }
}
else {
    $markdown += "*No regressions found*`n"
}

# Add added tests section
$markdown += @"

## Added Tests (in $TargetRunName only)

"@

if ($addedTestsPerSuite.Count -gt 0) {
    $markdown += "| Suite | Test Method |`n"
    $markdown += "|-------|-------------|`n"
    foreach ($item in $addedTestsPerSuite) {
        foreach ($test in $item.Tests) {
            $markdown += "| $($item.Suite) | ``$test`` |`n"
        }
    }
}
else {
    $markdown += "*No added tests*`n"
}

# Add removed tests section
$markdown += @"

## Removed Tests (in $BaselineRunName only)

"@

if ($removedTestsPerSuite.Count -gt 0) {
    $markdown += "| Suite | Test Method |`n"
    $markdown += "|-------|-------------|`n"
    foreach ($item in $removedTestsPerSuite) {
        foreach ($test in $item.Tests) {
            $markdown += "| $($item.Suite) | ``$test`` |`n"
        }
    }
}
else {
    $markdown += "*No removed tests*`n"
}

# Add failed comparisons section if any
if ($failedResults.Count -gt 0) {
    $markdown += @"

## Failed Comparisons

| Suite | Error |
|-------|-------|

"@

    foreach ($result in $failedResults) {
        $markdown += "| $($result.Suite) | $($result.Error) |`n"
    }
}

# Write markdown file
$markdown | Out-File -FilePath $OutputPath -Encoding UTF8

Write-Host ""
Write-Host "========================================"
Write-Host "Comparison Report Generated:"
Write-Host "  $OutputPath"
Write-Host ""
Write-Host "Summary:"
Write-Host "  Total suites: $($successResults.Count)"
Write-Host "  Time: $([math]::Round($totalBaselineTime, 2))s ($BaselineRunName) vs $([math]::Round($totalTargetTime, 2))s ($TargetRunName)"
Write-Host "  Failed tests: $totalBaselineFailed ($BaselineRunName) vs $totalTargetFailed ($TargetRunName)"
Write-Host "  Regressions: $($regressionsPerSuite | ForEach-Object { $_.Regressions.Count } | Measure-Object -Sum | Select-Object -ExpandProperty Sum) methods"
Write-Host "========================================"
