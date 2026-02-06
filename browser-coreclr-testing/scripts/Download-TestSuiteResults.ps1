<#
.SYNOPSIS
    Downloads helix results console log from Helix.

.DESCRIPTION
    This script downloads the console log and test results for a specific test project from a Helix run.

.PARAMETER RunName
    A descriptive name for the run (e.g., Baseline, CoreCLR).

.PARAMETER TestProjectName
    The name of the test project to download results for.

.PARAMETER WorkitemsJson
    Path to the helix-results.json file containing workitem data.

.EXAMPLE
    .\Download-HelixResults.ps1 -RunName Baseline -TestProjectName System.Runtime.InteropServices.JavaScript.Tests -WorkitemsJson "artifacts\browser-runs\Baseline\helix-results.json"
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$RunName,

    [Parameter(Mandatory = $true, Position = 1)]
    [string]$TestProjectName,

    [Parameter(Mandatory = $true, Position = 2)]
    [string]$WorkitemsJson
)

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Detect runtime root - current directory should be runtime repo
$RepoRoot = Get-Location
if (-not (Test-Path "$RepoRoot\build.sh") -or -not (Test-Path "$RepoRoot\src\libraries")) {
    Write-Error "This script must be run from the root of a runtime repository.`nUsage: cd \path\to\runtime; $ScriptDir\Download-HelixResults.ps1 <RunName> <TestProjectName>"
    exit 1
}

$ResultsDir = Join-Path $RepoRoot "artifacts\browser-runs\$RunName\$TestProjectName"
$SuiteLogPath = Join-Path $ResultsDir "console.log"
$SuiteResultsPath = Join-Path $ResultsDir "testResults.xml"
$ManifestPath = Join-Path $ResultsDir "manifest.json"

# Check if already downloaded
if ((Test-Path $SuiteLogPath) -and (Test-Path $SuiteResultsPath)) {
    Write-Host "✓ Already downloaded: $TestProjectName"
    exit 0
}

# Check workitems file exists
if (-not (Test-Path $WorkitemsJson)) {
    Write-Error "Workitems file not found: $WorkitemsJson"
    exit 1
}

# Create results directory
New-Item -ItemType Directory -Path $ResultsDir -Force | Out-Null

# Find the workitem for this test suite using regex pattern
$workitemPattern = "WasmTestOn(Chrome|Firefox)-(ST|CLR-ST|MONO-ST|MONO-MT)-$([regex]::Escape($TestProjectName))"
Write-Host "Looking for workitem matching: $workitemPattern"

$workitems = Get-Content $WorkitemsJson | ConvertFrom-Json
$matchingWorkitem = $workitems | Where-Object { $_.Name -match $workitemPattern } | Select-Object -First 1

if (-not $matchingWorkitem -or -not $matchingWorkitem.DetailsUrl) {
    Write-Host "Error: Workitem matching '$workitemPattern' not found in $WorkitemsJson"
    Write-Host ""
    Write-Host "Available workitems containing '$TestProjectName':"
    $workitems | ForEach-Object { $_.Name } | Where-Object { $_ -match [regex]::Escape($TestProjectName) } | ForEach-Object {
        Write-Host "  $_"
    }
    exit 1
}

$detailsUrl = $matchingWorkitem.DetailsUrl

Write-Host "Fetching workitem details from Helix API..."
try {
    $workitemDetails = Invoke-RestMethod -Uri $detailsUrl -Method Get
    $workitemDetails | ConvertTo-Json -Depth 10 | Out-File -FilePath $ManifestPath -Encoding UTF8
}
catch {
    Write-Error "Failed to fetch workitem details from: $detailsUrl"
    exit 1
}

$consoleUri = $workitemDetails.ConsoleOutputUri
$testResultsUri = $workitemDetails.Files | 
    Where-Object { $_.FileName -match 'testResults\.xml$' } | 
    Select-Object -First 1 -ExpandProperty Uri

if (-not $consoleUri) {
    Write-Error "ConsoleOutputUri not found in workitem details"
    exit 1
}

if (-not $testResultsUri) {
    Write-Warning "testResults.xml not found in workitem files"
}

# Download console log
if (Test-Path $SuiteLogPath) {
    Write-Host "✓ Console log already exists: $SuiteLogPath"
}
else {
    Write-Host "Downloading console log..."
    try {
        Invoke-WebRequest -Uri $consoleUri -OutFile $SuiteLogPath
        $fileSize = (Get-Item $SuiteLogPath).Length
        Write-Host "✓ Downloaded helix results: $SuiteLogPath ($fileSize bytes)"
        
        # Extract and display test summary
        Write-Host ""
        Write-Host "Suite Test Summary:"
        $logContent = Get-Content $SuiteLogPath -Raw
        if ($logContent -match 'TEST EXECUTION SUMMARY[^\n]*\n([^\n]+)') {
            Write-Host "  $($Matches[1])"
        }
        else {
            Write-Host "  (summary not found)"
        }
    }
    catch {
        Write-Error "Failed to download console log from: $consoleUri"
        exit 1
    }
}

# Download run_client.py log if available
$runClientLog = $workitemDetails.Logs | 
    Where-Object { $_.Module -eq 'run_client.py' } | 
    Select-Object -First 1
if ($runClientLog -and $runClientLog.Uri) {
    $runClientLogPath = Join-Path $ResultsDir "run_client.log"
    if (Test-Path $runClientLogPath) {
        Write-Host "✓ run_client.log already exists: $runClientLogPath"
    }
    else {
        Write-Host ""
        Write-Host "Downloading run_client.log..."
        try {
            Invoke-WebRequest -Uri $runClientLog.Uri -OutFile $runClientLogPath
            $fileSize = (Get-Item $runClientLogPath).Length
            Write-Host "✓ Downloaded run_client.log: $runClientLogPath ($fileSize bytes)"
        }
        catch {
            Write-Warning "Failed to download run_client.log from: $($runClientLog.Uri)"
        }
    }
}

# Download test results - try manifest URI first, then fall back to run_client.log
$testResultsDownloaded = $false
if ($testResultsUri) {
    if (Test-Path $SuiteResultsPath) {
        Write-Host "✓ Test results already exist: $SuiteResultsPath"
        $testResultsDownloaded = $true
    }
    else {
        Write-Host ""
        Write-Host "Downloading testResults.xml..."
        try {
            Invoke-WebRequest -Uri $testResultsUri -OutFile $SuiteResultsPath
            $fileSize = (Get-Item $SuiteResultsPath).Length
            Write-Host "✓ Downloaded Suite test results: $SuiteResultsPath ($fileSize bytes)"
            $testResultsDownloaded = $true
        }
        catch {
            Write-Warning "Failed to download testResults.xml from manifest: $testResultsUri"
            Write-Host "Will try to find uploaded files in run_client.log..."
        }
    }
}

# Parse run_client.log for uploaded files (write_url entries) as fallback or additional files
$runClientLogPath = Join-Path $ResultsDir "run_client.log"
if (Test-Path $runClientLogPath) {
    Write-Host ""
    Write-Host "Scanning run_client.log for uploaded files..."
    $logContent = Get-Content $runClientLogPath -Raw
    $writeUrlMatches = [regex]::Matches($logContent, 'write_url:\s*(https://[^\s]+)')
    
    if ($writeUrlMatches.Count -gt 0) {
        $uploadsDir = Join-Path $ResultsDir "uploads"
        New-Item -ItemType Directory -Path $uploadsDir -Force | Out-Null
        
        foreach ($match in $writeUrlMatches) {
            $uploadUrl = $match.Groups[1].Value
            # Extract filename from URL (last path segment, remove query string)
            $fileName = ($uploadUrl -split '/')[-1] -replace '\?.*$', ''
            
            # Skip .csv.gz files and __helix_metadata_ files
            if ($fileName -match '\.csv\.gz$' -or $fileName -match '^__helix_metadata_') {
                continue
            }
            
            $localPath = Join-Path $uploadsDir $fileName
            
            # Special handling for testResults.xml if not already downloaded
            if ($fileName -match 'testResults\.xml' -and -not $testResultsDownloaded) {
                $localPath = $SuiteResultsPath
            }
            
            if (Test-Path $localPath) {
                Write-Host "✓ Already exists: $fileName"
            }
            else {
                try {
                    Invoke-WebRequest -Uri $uploadUrl -OutFile $localPath
                    $fileSize = (Get-Item $localPath).Length
                    Write-Host "✓ Downloaded: $fileName ($fileSize bytes)"
                    
                    if ($localPath -eq $SuiteResultsPath) {
                        $testResultsDownloaded = $true
                    }
                }
                catch {
                    Write-Warning "Failed to download: $fileName from $uploadUrl"
                }
            }
        }
    }
    else {
        Write-Host "  No write_url entries found in run_client.log"
    }
}
