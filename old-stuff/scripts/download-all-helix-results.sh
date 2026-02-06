#!/bin/bash

# Script to download Mono baseline console logs for all test suites from Helix
#
# Usage: Run from the root of a runtime repository (runtime or runtime2)
#   ../wasm-team/scripts/download-all-mono-baseline.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOWNLOAD_SCRIPT="${SCRIPT_DIR}/download-helix-results.sh"

# Detect runtime root - current directory should be runtime repo
REPO_ROOT="$(pwd)"
if [ ! -f "$REPO_ROOT/build.sh" ] || [ ! -d "$REPO_ROOT/src/libraries" ]; then
    echo "Error: This script must be run from the root of a runtime repository."
    echo "Usage: cd /path/to/runtime && $SCRIPT_DIR/download-all-mono-baseline.sh"
    exit 1
fi

if [ -z "$2" ]; then
    echo "Usage: $0 <RunName> RunUrl"
    echo "Usage: $0 MonoBaseline https://helix.dot.net/api/jobs/dfab4ca1-2330-4760-a051-b9edef08c80c/workitems?api-version=2019-06-17"
    echo "Usage: $0 CoreCLR https://helix.dot.net/api/jobs/05679ccb-bca6-4ea4-9fd0-cf1b1b4d33d3/workitems?api-version=2019-06-17"
    exit 1
fi

# Check download script exists
if [ ! -f "$DOWNLOAD_SCRIPT" ]; then
    echo "Error: Download script not found: $DOWNLOAD_SCRIPT"
    exit 1
fi

RUN_NAME="$1"
RUN_URL="$2"

RESULTS_DIR="${REPO_ROOT}/artifacts/browser-runs/${RUN_NAME}/"
WORKITEMS_JSON="${RESULTS_DIR}/helix-results.json"


# Download workitems JSON and store it in WORKITEMS_JSON
echo "Downloading workitems from Helix run: $RUN_URL"
mkdir -p "$RESULTS_DIR"
if ! curl -s -o "$WORKITEMS_JSON" "$RUN_URL"; then
    echo "Error: Failed to download workitems from Helix."
    exit 1
fi

# Extract test project names from workitem names
# Match prefixes: WasmTestOnChrome-ST-, WasmTestOnFirefox-ST-, WasmTestOnChrome-CLR-ST-, WasmTestOnFirefox-MONO-ST-, WasmTestOnChrome-MONO-MT-
TEST_PROJECTS=$(jq -r '.[].Name | select(test("^WasmTestOn(Chrome|Firefox)-(ST|MT|CLR-ST|MONO-ST|MONO-MT)-")) | sub("^WasmTestOn(Chrome|Firefox)-(ST|MT|CLR-ST|MONO-ST|MONO-MT)-"; "")' "$WORKITEMS_JSON")

TOTAL=$(echo "$TEST_PROJECTS" | wc -l)
MAX_PARALLEL=${MAX_PARALLEL:-10}

echo "Found $TOTAL test suites to download"
echo "Runtime root: $REPO_ROOT"
echo "Parallel downloads: $MAX_PARALLEL"
echo ""

# Create a temporary directory for tracking results
TEMP_DIR=$(mktemp -d)
trap "rm -rf $TEMP_DIR" EXIT

# Function to download a single project
download_project() {
    local PROJECT="$1"
    local RESULT_FILE="$TEMP_DIR/$PROJECT.result"
    
    if "$DOWNLOAD_SCRIPT" "$RUN_NAME" "$PROJECT" > "$TEMP_DIR/$PROJECT.log" 2>&1; then
        echo "success" > "$RESULT_FILE"
        echo "✓ $PROJECT"
    else
        echo "failed" > "$RESULT_FILE"
        echo "✗ $PROJECT (see log for details)"
    fi
}

export -f download_project
export DOWNLOAD_SCRIPT RUN_NAME TEMP_DIR

# Run downloads in parallel using xargs
echo "$TEST_PROJECTS" | xargs -P "$MAX_PARALLEL" -I {} bash -c 'download_project "$@"' _ {}

# Count results
SUCCESS=$(find "$TEMP_DIR" -name "*.result" -exec cat {} \; | grep -c "success" || true)
FAILED=$(find "$TEMP_DIR" -name "*.result" -exec cat {} \; | grep -c "failed" || true)

echo ""
echo "========================================"
echo "Download Summary:"
echo "  Total:   $TOTAL"
echo "  Success: $SUCCESS"
echo "  Failed:  $FAILED"
echo "========================================"

# Show failed projects
if [ $FAILED -gt 0 ]; then
    echo ""
    echo "Failed projects:"
    for f in "$TEMP_DIR"/*.result; do
        if [ -f "$f" ] && grep -q "failed" "$f"; then
            PROJECT=$(basename "$f" .result)
            echo "  - $PROJECT"
            echo "    Log: $TEMP_DIR/$PROJECT.log"
        fi
    done
    exit 1
fi
