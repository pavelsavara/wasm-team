#!/bin/bash

# Script to download helix results console log from Helix
#
# Usage: Run from the root of a runtime repository (runtime or runtime2)
#   ../wasm-team/scripts/download-helix-results.sh <RunName> <TestProjectName>
#
# Example:
#   ../wasm-team/scripts/download-helix-results.sh MonoBaseline System.Runtime.InteropServices.JavaScript.Tests

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Detect runtime root - current directory should be runtime repo
REPO_ROOT="$(pwd)"
if [ ! -f "$REPO_ROOT/build.sh" ] || [ ! -d "$REPO_ROOT/src/libraries" ]; then
    echo "Error: This script must be run from the root of a runtime repository."
    echo "Usage: cd /path/to/runtime && $SCRIPT_DIR/download-helix-results.sh <RunName> <TestProjectName>"
    exit 1
fi

if [ -z "$2" ]; then
    echo "Usage: $0 <RunName> <TestProjectName>"
    echo "Example: $0 MonoBaseline System.Runtime.InteropServices.JavaScript.Tests"
    exit 1
fi

RUN_NAME="$1"
TEST_PROJECT_NAME="$2"
RESULTS_DIR="${REPO_ROOT}/artifacts/browser-runs/${RUN_NAME}/${TEST_PROJECT_NAME}"
MONO_LOG_PATH="${RESULTS_DIR}/mono-console.log"
MONO_RESULTS_PATH="${RESULTS_DIR}/mono-testResults.xml"
WORKITEMS_JSON="${REPO_ROOT}/artifacts/browser-runs/${RUN_NAME}/helix-results.json"

# Check if already downloaded
if [ -f "$MONO_LOG_PATH" ] || [ -f "$MONO_RESULTS_PATH" ]; then
    echo "Mono helix results already exists:"
    echo "  - $MONO_LOG_PATH"
    echo "  - $MONO_RESULTS_PATH"
    echo "Delete them first if you want to re-download."
    exit 0
fi

# Check workitems file exists
if [ ! -f "$WORKITEMS_JSON" ]; then
    echo "Error: Workitems file not found: $WORKITEMS_JSON"
    exit 1
fi

# Create results directory
mkdir -p "$RESULTS_DIR"

# Find the workitem for this test suite
WORKITEM_NAME="WasmTestOnChrome-ST-${TEST_PROJECT_NAME}"
echo "Looking for workitem: $WORKITEM_NAME"

DETAILS_URL=$(jq -r ".[] | select(.Name == \"$WORKITEM_NAME\") | .DetailsUrl" "$WORKITEMS_JSON" 2>/dev/null || echo "")

if [ -z "$DETAILS_URL" ] || [ "$DETAILS_URL" = "null" ]; then
    echo "Error: Workitem '$WORKITEM_NAME' not found in $WORKITEMS_JSON"
    echo ""
    echo "Available workitems containing '$TEST_PROJECT_NAME':"
    jq -r ".[].Name" "$WORKITEMS_JSON" | grep -i "$TEST_PROJECT_NAME" || echo "  (none found)"
    exit 1
fi

echo "Fetching workitem details from Helix API..."
WORKITEM_DETAILS=$(curl -s "$DETAILS_URL" 2>/dev/null)

if [ -z "$WORKITEM_DETAILS" ]; then
    echo "Error: Failed to fetch workitem details from: $DETAILS_URL"
    exit 1
fi

CONSOLE_URI=$(echo "$WORKITEM_DETAILS" | jq -r '.ConsoleOutputUri // empty' 2>/dev/null)
TEST_RESULTS_URI=$(echo "$WORKITEM_DETAILS" | jq -r '.Files[] | select(.FileName | test("testResults.xml$")) | .Uri // empty' 2>/dev/null)

if [ -z "$CONSOLE_URI" ]; then
    echo "Error: ConsoleOutputUri not found in workitem details"
    echo "Response: $WORKITEM_DETAILS"
    exit 1
fi

if [ -z "$TEST_RESULTS_URI" ]; then
    echo "Warning: testResults.xml not found in workitem files"
fi

echo "Downloading console log..."
if curl -s -o "$MONO_LOG_PATH" "$CONSOLE_URI"; then
    FILE_SIZE=$(wc -c < "$MONO_LOG_PATH")
    echo "✓ Downloaded helix results: $MONO_LOG_PATH ($FILE_SIZE bytes)"
    
    # Extract and display test summary
    echo ""
    echo "Mono Test Summary:"
    grep "TEST EXECUTION SUMMARY" -A1 "$MONO_LOG_PATH" | tail -2 || echo "  (summary not found)"
else
    echo "Error: Failed to download console log from: $CONSOLE_URI"
    exit 1
fi

if [ -n "$TEST_RESULTS_URI" ]; then
    echo ""
    echo "Downloading testResults.xml..."
    if curl -s -o "$MONO_RESULTS_PATH" "$TEST_RESULTS_URI"; then
        FILE_SIZE=$(wc -c < "$MONO_RESULTS_PATH")
        echo "✓ Downloaded Mono test results: $MONO_RESULTS_PATH ($FILE_SIZE bytes)"
    else
        echo "Warning: Failed to download testResults.xml from: $TEST_RESULTS_URI"
    fi
fi
