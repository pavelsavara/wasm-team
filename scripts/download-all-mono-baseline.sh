#!/bin/bash

# Script to download Mono baseline console logs for all test suites from Helix
# Usage: ./browser-tests/download-all-mono-baseline.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKITEMS_JSON="${SCRIPT_DIR}/Mono-chrome-workitems.json"
DOWNLOAD_SCRIPT="${SCRIPT_DIR}/download-mono-baseline.sh"

# Check workitems file exists
if [ ! -f "$WORKITEMS_JSON" ]; then
    echo "Error: Workitems file not found: $WORKITEMS_JSON"
    exit 1
fi

# Check download script exists
if [ ! -f "$DOWNLOAD_SCRIPT" ]; then
    echo "Error: Download script not found: $DOWNLOAD_SCRIPT"
    exit 1
fi

# Extract test project names from workitem names (strip "WasmTestOnChrome-ST-" prefix)
TEST_PROJECTS=$(jq -r '.[].Name | sub("^WasmTestOnChrome-ST-"; "")' "$WORKITEMS_JSON")

TOTAL=$(echo "$TEST_PROJECTS" | wc -l)
CURRENT=0
SUCCESS=0
FAILED=0

echo "Found $TOTAL test suites to download"
echo ""

for PROJECT in $TEST_PROJECTS; do
    CURRENT=$((CURRENT + 1))
    echo "[$CURRENT/$TOTAL] Downloading: $PROJECT"
    echo "----------------------------------------"
    
    if "$DOWNLOAD_SCRIPT" "$PROJECT"; then
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
