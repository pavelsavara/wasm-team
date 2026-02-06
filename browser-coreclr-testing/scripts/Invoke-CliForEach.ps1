<#
.SYNOPSIS
    Runs Copilot CLI for each item in a file, with parallel execution support.

.DESCRIPTION
    This script processes items from a file and runs the Copilot CLI for each one.
    It supports parallel execution, custom models, and automatic retry with fallback model.

.PARAMETER ItemsFile
    File with one item per line to process.

.PARAMETER InstructionsFile
    File with instructions for the CLI. Use {{ITEM}} as placeholder for each item,
    and {{ERROR}} as placeholder for error output file path.

.PARAMETER Parallel
    Number of parallel jobs (default: 10).

.PARAMETER OutputDir
    Directory for CLI outputs (default: $RepoRoot/artifacts/cli).

.PARAMETER Model
    AI model to use (default: gpt-5.1-codex-mini).

.PARAMETER FallbackModel
    Fallback model to use on failure (default: claude-opus-4.5).

.PARAMETER CopilotCli
    Path to copilot CLI executable (default: assumes 'copilot' is on PATH).

.PARAMETER DryRun
    Print commands without executing them.

.PARAMETER Verbose
    Enable verbose logging and print CLI output.

.PARAMETER Yolo
    Enable all permissions (no confirmation prompts).

.EXAMPLE
    .\Invoke-CliForEach.ps1 -ItemsFile failed-tests.txt -InstructionsFile fix-instructions.md
    .\Invoke-CliForEach.ps1 -ItemsFile failed-tests.txt -InstructionsFile fix-instructions.md -Parallel 5
    .\Invoke-CliForEach.ps1 -ItemsFile failed-tests.txt -InstructionsFile fix-instructions.md -OutputDir ./my-outputs -Model gpt-5
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$ItemsFile,

    [Parameter(Mandatory = $true, Position = 1)]
    [string]$InstructionsFile,

    [Parameter()]
    [int]$Parallel = 10,

    [Parameter()]
    [string]$OutputDir,

    [Parameter()]
    [string]$Model = "gpt-5.1-codex-mini",

    [Parameter()]
    [string]$FallbackModel = "claude-opus-4.5",

    [Parameter()]
    [string]$CopilotCli = "copilot",

    [Parameter()]
    [switch]$DryRun,

    [Parameter()]
    [switch]$Yolo
)

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Detect runtime root - current directory should be runtime repo
$RepoRoot = Get-Location
if (-not (Test-Path "$RepoRoot\build.sh") -or -not (Test-Path "$RepoRoot\src\libraries")) {
    Write-Error "This script must be run from the root of a runtime repository.`nUsage: cd \path\to\runtime; $ScriptDir\Invoke-CliForEach.ps1 <items-file> <instructions-file> [options]"
    exit 1
}

# Set default output directory
if (-not $OutputDir) {
    $OutputDir = Join-Path $RepoRoot "artifacts\cli"
}

# Resolve to absolute paths if relative
if (-not [System.IO.Path]::IsPathRooted($ItemsFile)) {
    $ItemsFile = Join-Path $RepoRoot $ItemsFile
}
if (-not [System.IO.Path]::IsPathRooted($InstructionsFile)) {
    $InstructionsFile = Join-Path $RepoRoot $InstructionsFile
}

# Validate files exist
if (-not (Test-Path $ItemsFile)) {
    Write-Error "Items file not found: $ItemsFile"
    exit 1
}
if (-not (Test-Path $InstructionsFile)) {
    Write-Error "Instructions file not found: $InstructionsFile"
    exit 1
}

# Validate copilot CLI exists
$copilotCmd = Get-Command $CopilotCli -ErrorAction SilentlyContinue
if (-not $copilotCmd -and -not $DryRun) {
    Write-Error "Copilot CLI not found: $CopilotCli. Ensure it's on PATH or specify -CopilotCli parameter."
    exit 1
}

# Create output directory
New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null

# Read instructions template
$InstructionsTemplate = Get-Content $InstructionsFile -Raw

# Read items (non-empty lines)
$Items = Get-Content $ItemsFile | Where-Object { $_.Trim() -ne "" }
$TotalItems = $Items.Count

Write-Host "=============================================="
Write-Host "Copilot CLI Batch Runner"
Write-Host "=============================================="
Write-Host "Items file:       $ItemsFile"
Write-Host "Instructions:     $InstructionsFile"
Write-Host "Output directory: $OutputDir"
Write-Host "Parallel jobs:    $Parallel"
Write-Host "Model:            $Model"
Write-Host "Total items:      $TotalItems"
Write-Host "Dry run:          $DryRun"
Write-Host "Verbose:          $VerbosePreference"
Write-Host "Yolo:             $Yolo"
Write-Host "=============================================="

# Process items in parallel
$results = $Items | ForEach-Object -ThrottleLimit $Parallel -Parallel {
    $item = $_
    $itemIndex = $using:Items.IndexOf($_) + 1
    $copilotCli = $using:CopilotCli
    $outputDir = $using:OutputDir
    $model = $using:Model
    $fallbackModel = $using:FallbackModel
    $instructionsTemplate = $using:InstructionsTemplate
    $repoRoot = $using:RepoRoot
    $dryRun = $using:DryRun
    $verboseEnabled = $using:VerbosePreference -eq 'Continue'
    $yolo = $using:Yolo

    # Skip empty lines
    if ([string]::IsNullOrWhiteSpace($item)) {
        return @{ Status = "skipped"; Item = $item }
    }

    # Create safe filename from item
    $safeName = ($item -replace '[/:*?"<>|\\]', '_').Substring(0, [Math]::Min($item.Length, 100))
    $timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
    $outputFile = Join-Path $outputDir "${safeName}_${timestamp}.md"
    $errorFile = Join-Path $outputDir "${safeName}_${timestamp}.error"
    $logFile = Join-Path $outputDir "${safeName}_${timestamp}.log"
    $instructionsFile = Join-Path $outputDir "${safeName}_${timestamp}.instructions"

    # Replace placeholders in instructions
    $instructions = $instructionsTemplate -replace '\{\{ITEM\}\}', $item
    $instructions = $instructions -replace '\{\{ERROR\}\}', $errorFile

    if ($verboseEnabled) {
        $instructions | Out-File -FilePath $instructionsFile -Encoding UTF8
        Write-Host "[$itemIndex] Instructions file: $instructionsFile"
        Write-Host "[$itemIndex] Log file: $logFile"
        Write-Host "[$itemIndex] Error file: $errorFile"
        Write-Host "[$itemIndex] Output file: $outputFile"
        Write-Host "[$itemIndex] --- Expanded instructions ---"
        Write-Host $instructions
        Write-Host "[$itemIndex] --- End instructions ---"
    }

    Write-Host "[$itemIndex] Processing: $item"

    if ($dryRun) {
        $yoloFlag = if ($yolo) { "--yolo " } else { "" }
        Write-Host "[$itemIndex] Would run: $copilotCli -p `"...`" --model $model ${yoloFlag}--share `"$outputFile`""
        return @{ Status = "pass"; Item = $item }
    }

    # Build arguments
    $yoloArgs = if ($yolo) { @("--yolo") } else { @() }

    try {
        Set-Location $repoRoot
        
        $cliArgs = @(
            "-p", $instructions,
            "--model", $model,
            "--add-dir", $repoRoot,
            "--allow-tool", "write"
        ) + $yoloArgs + @(
            "--no-ask-user",
            "--share", $outputFile
        )

        & $copilotCli @cliArgs 2>&1 | Out-File -FilePath $logFile -Encoding UTF8

        if ($verboseEnabled) {
            Write-Host "[$itemIndex] --- CLI Output ---"
            Get-Content $logFile
            Write-Host "[$itemIndex] --- End CLI Output ---"
        }

        # Check if error file was created by CLI (indicates failure)
        if (Test-Path $errorFile) {
            Write-Host "[$itemIndex] First attempt failed, retrying with $fallbackModel..."
            Remove-Item $errorFile -Force -ErrorAction SilentlyContinue

            $retryLogFile = $logFile -replace '\.log$', '_retry.log'
            $retryOutputFile = $outputFile -replace '\.md$', '_retry.md'

            $cliArgs = @(
                "-p", $instructions,
                "--model", $fallbackModel,
                "--add-dir", $repoRoot,
                "--allow-tool", "write"
            ) + $yoloArgs + @(
                "--no-ask-user",
                "--share", $retryOutputFile
            )

            & $copilotCli @cliArgs 2>&1 | Out-File -FilePath $retryLogFile -Encoding UTF8

            if (Test-Path $errorFile) {
                Write-Host ""
                Write-Host "=============================================="
                Write-Host "[$itemIndex] FAILED (after retry): $item"
                Write-Host "Error output:"
                Get-Content $errorFile
                Write-Host "=============================================="
                Write-Host ""
                return @{ Status = "fail"; Item = $item }
            }
            else {
                Write-Host "[$itemIndex] Completed (on retry with $fallbackModel): $item"
                return @{ Status = "pass"; Item = $item }
            }
        }
        else {
            Write-Host "[$itemIndex] Completed: $item"
            return @{ Status = "pass"; Item = $item }
        }
    }
    catch {
        Write-Host ""
        Write-Host "=============================================="
        Write-Host "[$itemIndex] CLI ERROR: $item"
        Write-Host "Error: $_"
        Write-Host "=============================================="
        Write-Host ""
        return @{ Status = "fail"; Item = $item }
    }
}

Write-Host ""
Write-Host "=============================================="
Write-Host "SUMMARY"
Write-Host "=============================================="

$passed = ($results | Where-Object { $_.Status -eq "pass" }).Count
$failed = ($results | Where-Object { $_.Status -eq "fail" }).Count

Write-Host "Total:   $TotalItems"
Write-Host "Passed:  $passed"
Write-Host "Failed:  $failed"
Write-Host "Output:  $OutputDir"
Write-Host "=============================================="

if ($failed -gt 0) {
    exit 1
}
