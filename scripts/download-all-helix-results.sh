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

# Extract test project names from workitem names (strip "WasmTestOnChrome-ST-" prefix)
TEST_PROJECTS=$(jq -r '.[].Name | sub("^WasmTestOnChrome-ST-"; "")' "$WORKITEMS_JSON")

TOTAL=$(echo "$TEST_PROJECTS" | wc -l)
CURRENT=0
SUCCESS=0
FAILED=0

echo "Found $TOTAL test suites to download"
echo "Runtime root: $REPO_ROOT"
echo ""

for PROJECT in $TEST_PROJECTS; do
    CURRENT=$((CURRENT + 1))
    echo "[$CURRENT/$TOTAL] Downloading: $PROJECT"
    echo "----------------------------------------"
    
    if "$DOWNLOAD_SCRIPT" "$RUN_NAME" "$PROJECT"; then
        SUCCESS=$((SUCCESS + 1))
    else
        FAILED=$((FAILED + 1))
        echo "Warning: Failed to download baseline for $PROJECT"
    fi
    
    echo ""
done

echo "========================================"
echo "Download Summary:"
echo "  Total:   $TOTAL"
echo "  Success: $SUCCESS"
echo "  Failed:  $FAILED"
echo "========================================"

if [ $FAILED -gt 0 ]; then
    exit 1
fi
