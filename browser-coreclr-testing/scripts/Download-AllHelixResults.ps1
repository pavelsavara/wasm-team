<#
.SYNOPSIS
    Downloads console logs and xml results for all test suites from Helix.

.DESCRIPTION
    This script downloads all workitems from a Helix run and extracts test project results.

.PARAMETER RunName
    A descriptive name for the run (e.g., Baseline, CoreCLR).

.PARAMETER RunUrl
    The Helix API URL for the workitems.

.PARAMETER MaxParallel
    Maximum number of parallel downloads (default: 10).

.EXAMPLE
    .\Download-AllHelixResults.ps1 -RunName Baseline -RunUrl "https://helix.dot.net/api/jobs/dfab4ca1-2330-4760-a051-b9edef08c80c/workitems?api-version=2019-06-17"
    .\Download-AllHelixResults.ps1 -RunName CoreCLR -RunUrl "https://helix.dot.net/api/jobs/05679ccb-bca6-4ea4-9fd0-cf1b1b4d33d3/workitems?api-version=2019-06-17"
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$RunName,

    [Parameter(Mandatory = $true, Position = 1)]
    [string]$RunUrl,

    [Parameter()]
    [int]$MaxParallel = 10
)

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$DownloadScript = Join-Path $ScriptDir "Download-TestSuiteResults.ps1"

# Detect runtime root - current directory should be runtime repo
$RepoRoot = Get-Location
if (-not (Test-Path "$RepoRoot\build.sh") -or -not (Test-Path "$RepoRoot\src\libraries")) {
    Write-Error "This script must be run from the root of a runtime repository.`nUsage: cd \path\to\runtime; $ScriptDir\Download-AllHelixResults.ps1 <RunName> <RunUrl>"
    exit 1
}

# Check download script exists
if (-not (Test-Path $DownloadScript)) {
    Write-Error "Download script not found: $DownloadScript"
    exit 1
}

$ResultsDir = Join-Path $RepoRoot "artifacts\browser-runs\$RunName"
$WorkitemsJson = Join-Path $ResultsDir "helix-results.json"

# Download workitems JSON
Write-Host "Downloading workitems from Helix run: $RunUrl"
New-Item -ItemType Directory -Path $ResultsDir -Force | Out-Null

try {
    $workitemsContent = Invoke-RestMethod -Uri $RunUrl -Method Get
    $workitemsContent | ConvertTo-Json -Depth 10 | Out-File -FilePath $WorkitemsJson -Encoding UTF8
}
catch {
    Write-Error "Failed to download workitems from Helix: $_"
    exit 1
}

# Extract test project names from workitem names
# Match prefixes: WasmTestOnChrome-ST-, WasmTestOnFirefox-ST-, WasmTestOnChrome-CLR-ST-, WasmTestOnFirefox-MONO-ST-, WasmTestOnChrome-MONO-MT-
$testProjects = $workitemsContent | 
    ForEach-Object { $_.Name } |
    Where-Object { $_ -match '^WasmTestOn(Chrome|Firefox)-(ST|MT|CLR-ST|MONO-ST|MONO-MT)-' } |
    ForEach-Object { $_ -replace '^WasmTestOn(Chrome|Firefox)-(ST|MT|CLR-ST|MONO-ST|MONO-MT)-', '' }

$total = $testProjects.Count

Write-Host "Found $total test suites to download"
Write-Host "Runtime root: $RepoRoot"
Write-Host "Parallel downloads: $MaxParallel"
Write-Host ""

# Download in parallel
$results = $testProjects | ForEach-Object -ThrottleLimit $MaxParallel -Parallel {
    $project = $_
    $downloadScript = $using:DownloadScript
    $runName = $using:RunName
    $repoRoot = $using:RepoRoot
    $workitemsJson = $using:WorkitemsJson
    
    try {
        Set-Location $repoRoot
        $output = & $downloadScript -RunName $runName -TestProjectName $project -WorkitemsJson $workitemsJson 2>&1
        Write-Host "✓ $project"
        return @{ Project = $project; Status = "success"; Output = $output }
    }
    catch {
        Write-Host "✗ $project (see log for details)"
        return @{ Project = $project; Status = "failed"; Error = $_.ToString() }
    }
}

# Count results
$success = ($results | Where-Object { $_.Status -eq "success" }).Count
$failed = ($results | Where-Object { $_.Status -eq "failed" }).Count

Write-Host ""
Write-Host "========================================"
Write-Host "Download Summary:"
Write-Host "  Total:   $total"
Write-Host "  Success: $success"
Write-Host "  Failed:  $failed"
Write-Host "========================================"

# Show failed projects
if ($failed -gt 0) {
    Write-Host ""
    Write-Host "Failed projects:"
    $results | Where-Object { $_.Status -eq "failed" } | ForEach-Object {
        Write-Host "  - $($_.Project)"
        if ($_.Error) {
            Write-Host "    Error: $($_.Error)"
        }
    }
    exit 1
}
