#!/bin/bash

# Script to run Copilot CLI for each item in a file, with parallel execution support
#
# Usage: Run from the root of a runtime repository (runtime or runtime2)
#   ../wasm-team/scripts/cli-for-each.sh <items-file> <instructions-file> [options]
#
# Arguments:
#   items-file         File with one item per line to process
#   instructions-file  File with instructions for the CLI (use {{ITEM}} as placeholder for each item,
#                      and {{ERROR}} as placeholder for error output file path)
#
# Options:
#   --parallel <N>     Number of parallel jobs (default: 10)
#   --output-dir <dir> Directory for CLI outputs (default: $REPO_ROOT/artifacts/cli)
#   --model <model>    AI model to use (default: claude-sonnet-4)
#   --dry-run          Print commands without executing them
#
# Examples:
#   ../wasm-team/scripts/cli-for-each.sh failed-tests.txt fix-instructions.md
#   ../wasm-team/scripts/cli-for-each.sh failed-tests.txt fix-instructions.md --parallel 5
#   ../wasm-team/scripts/cli-for-each.sh failed-tests.txt fix-instructions.md --output-dir ./my-outputs --model gpt-5
#
# The instructions file can contain:
#   - {{ITEM}} - will be replaced with the current item from the items file
#   - {{ERROR}} - will be replaced with the path to an error file; if CLI creates this file, item is considered failed

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COPILOT_CLI="/home/pavelsavara/.local/bin/copilot"

# Detect runtime root - current directory should be runtime repo
REPO_ROOT="$(pwd)"
if [ ! -f "$REPO_ROOT/build.sh" ] || [ ! -d "$REPO_ROOT/src/libraries" ]; then
    echo "Error: This script must be run from the root of a runtime repository."
    echo "Usage: cd /path/to/runtime && $SCRIPT_DIR/cli-for-each.sh <items-file> <instructions-file> [options]"
    exit 1
fi

# Default values
PARALLEL_JOBS=10
OUTPUT_DIR="$REPO_ROOT/artifacts/cli"
MODEL="claude-sonnet-4"
DRY_RUN=false

# Parse arguments
ITEMS_FILE=""
INSTRUCTIONS_FILE=""

while [[ $# -gt 0 ]]; do
    case $1 in
        --parallel)
            PARALLEL_JOBS="$2"
            shift 2
            ;;
        --output-dir)
            OUTPUT_DIR="$2"
            shift 2
            ;;
        --model)
            MODEL="$2"
            shift 2
            ;;
        --dry-run)
            DRY_RUN=true
            shift
            ;;
        -h|--help)
            head -n 26 "$0" | tail -n +3
            exit 0
            ;;
        *)
            if [ -z "$ITEMS_FILE" ]; then
                ITEMS_FILE="$1"
            elif [ -z "$INSTRUCTIONS_FILE" ]; then
                INSTRUCTIONS_FILE="$1"
            else
                echo "Error: Unknown argument: $1"
                exit 1
            fi
            shift
            ;;
    esac
done

# Validate required arguments
if [ -z "$ITEMS_FILE" ] || [ -z "$INSTRUCTIONS_FILE" ]; then
    echo "Usage: $0 <items-file> <instructions-file> [options]"
    echo "Run '$0 --help' for more information."
    exit 1
fi

# Resolve to absolute paths if relative
if [[ "$ITEMS_FILE" != /* ]]; then
    ITEMS_FILE="$REPO_ROOT/$ITEMS_FILE"
fi
if [[ "$INSTRUCTIONS_FILE" != /* ]]; then
    INSTRUCTIONS_FILE="$REPO_ROOT/$INSTRUCTIONS_FILE"
fi

# Validate files exist
if [ ! -f "$ITEMS_FILE" ]; then
    echo "Error: Items file not found: $ITEMS_FILE"
    exit 1
fi
if [ ! -f "$INSTRUCTIONS_FILE" ]; then
    echo "Error: Instructions file not found: $INSTRUCTIONS_FILE"
    exit 1
fi

# Validate copilot CLI exists
if [ ! -x "$COPILOT_CLI" ]; then
    echo "Error: Copilot CLI not found or not executable: $COPILOT_CLI"
    exit 1
fi

# Create output directory
mkdir -p "$OUTPUT_DIR"

# Read instructions template
INSTRUCTIONS_TEMPLATE=$(cat "$INSTRUCTIONS_FILE")

# Count total items (non-empty lines)
TOTAL_ITEMS=$(grep -c '.' "$ITEMS_FILE" || echo 0)

echo "=============================================="
echo "Copilot CLI Batch Runner"
echo "=============================================="
echo "Items file:       $ITEMS_FILE"
echo "Instructions:     $INSTRUCTIONS_FILE"
echo "Output directory: $OUTPUT_DIR"
echo "Parallel jobs:    $PARALLEL_JOBS"
echo "Model:            $MODEL"
echo "Total items:      $TOTAL_ITEMS"
echo "Dry run:          $DRY_RUN"
echo "=============================================="

# Create a temporary directory for job tracking
TRACKING_DIR=$(mktemp -d)
trap "rm -rf $TRACKING_DIR" EXIT

# Function to process a single item
process_item() {
    local item="$1"
    local item_index="$2"
    local copilot_cli="$3"
    local output_dir="$4"
    local model="$5"
    local instructions_template="$6"
    local repo_root="$7"
    local tracking_dir="$8"
    local dry_run="$9"
    
    # Skip empty lines
    if [ -z "$item" ]; then
        return 0
    fi
    
    # Create safe filename from item (replace problematic chars)
    local safe_name=$(echo "$item" | tr '/:*?"<>|\\' '_' | cut -c1-100)
    local timestamp=$(date +%Y%m%d_%H%M%S)
    local output_file="$output_dir/${safe_name}_${timestamp}.md"
    local error_file="$output_dir/${safe_name}_${timestamp}.error"
    local log_file="$output_dir/${safe_name}_${timestamp}.log"
    
    # Replace placeholders in instructions
    local instructions="${instructions_template//\{\{ITEM\}\}/$item}"
    instructions="${instructions//\{\{ERROR\}\}/$error_file}"
    
    echo "[${item_index}] Processing: $item"
    
    if [ "$dry_run" = "true" ]; then
        echo "[${item_index}] Would run: $copilot_cli -p \"...\" --model $model --yolo --share \"$output_file\""
        echo "pass" > "$tracking_dir/$item_index"
        return 0
    fi
    
    # Run copilot CLI
    cd "$repo_root"
    if "$copilot_cli" \
        -p "$instructions" \
        --model "$model" \
        --yolo \
        --no-ask-user \
        --share "$output_file" \
        > "$log_file" 2>&1; then
        
        # Check if error file was created by CLI (indicates failure)
        if [ -f "$error_file" ]; then
            echo ""
            echo "=============================================="
            echo "[${item_index}] FAILED: $item"
            echo "Error output:"
            cat "$error_file"
            echo "=============================================="
            echo ""
            echo "fail" > "$tracking_dir/$item_index"
        else
            echo "[${item_index}] Completed: $item"
            echo "pass" > "$tracking_dir/$item_index"
        fi
    else
        echo ""
        echo "=============================================="
        echo "[${item_index}] CLI ERROR: $item"
        echo "CLI exited with non-zero status. Check log: $log_file"
        echo "=============================================="
        echo ""
        echo "fail" > "$tracking_dir/$item_index"
    fi
}

# Read items into array
mapfile -t ITEMS < <(grep -v '^$' "$ITEMS_FILE")

echo "Using background jobs with $PARALLEL_JOBS parallel workers..."

# Process items with limited parallelism
running_jobs=0
item_index=0

for item in "${ITEMS[@]}"; do
    item_index=$((item_index + 1))
    
    # Wait if we have too many running jobs
    while [ $running_jobs -ge $PARALLEL_JOBS ]; do
        wait -n 2>/dev/null || true
        running_jobs=$(jobs -r | wc -l)
    done
    
    # Start new job in background
    process_item "$item" "$item_index" "$COPILOT_CLI" "$OUTPUT_DIR" "$MODEL" "$INSTRUCTIONS_TEMPLATE" "$REPO_ROOT" "$TRACKING_DIR" "$DRY_RUN" &
    running_jobs=$((running_jobs + 1))
done

# Wait for all remaining jobs
wait

echo ""
echo "=============================================="
echo "SUMMARY"
echo "=============================================="

# Count results
PASSED=$(find "$TRACKING_DIR" -type f -exec cat {} \; 2>/dev/null | grep -c "pass" || true)
FAILED=$(find "$TRACKING_DIR" -type f -exec cat {} \; 2>/dev/null | grep -c "fail" || true)

# Handle empty results
PASSED=${PASSED:-0}
FAILED=${FAILED:-0}

echo "Total:   $TOTAL_ITEMS"
echo "Passed:  $PASSED"
echo "Failed:  $FAILED"
echo "Output:  $OUTPUT_DIR"
echo "=============================================="

# Exit with error if any failed
if [ "$FAILED" -gt 0 ]; then
    exit 1
fi
