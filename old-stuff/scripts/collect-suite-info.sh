#!/bin/bash

# Script to collect test suite information from Mono baselines
# Downloads all baselines, extracts durations, and generates a sorted report
#
# Usage: Run from the root of a runtime repository (runtime or runtime2)
#   ../wasm-team/scripts/collect-suite-info.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WASM_TEAM_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

# Detect runtime root - current directory should be runtime repo
REPO_ROOT="$(pwd)"
if [ ! -f "$REPO_ROOT/build.sh" ] || [ ! -d "$REPO_ROOT/src/libraries" ]; then
    echo "Error: This script must be run from the root of a runtime repository."
    echo "Usage: cd /path/to/runtime && $SCRIPT_DIR/collect-suite-info.sh"
    exit 1
fi

WORKITEMS_JSON="${SCRIPT_DIR}/Mono-chrome-workitems.json"
OUTPUT_FILE="${REPO_ROOT}/artifacts/browser-runs/test-suites-info.md"

# Check workitems file exists
if [ ! -f "$WORKITEMS_JSON" ]; then
    echo "Error: Workitems file not found: $WORKITEMS_JSON"
    exit 1
fi

# Ensure output directory exists
mkdir -p "$(dirname "$OUTPUT_FILE")"

# Get all workitem names
WORKITEMS=$(jq -r '.[].Name' "$WORKITEMS_JSON")

# Temporary file for collecting data
TEMP_DATA=$(mktemp)

echo "Collecting test suite information..."
echo "Runtime root: $REPO_ROOT"
echo ""

COUNT=0
TOTAL=$(echo "$WORKITEMS" | wc -l)

for WORKITEM in $WORKITEMS; do
    COUNT=$((COUNT + 1))
    
    # Extract test project name from workitem name (remove "WasmTestOnChrome-ST-" prefix)
    TEST_PROJECT=$(echo "$WORKITEM" | sed 's/WasmTestOnChrome-ST-//')
    
    BASELINE_DIR="${REPO_ROOT}/artifacts/browser-runs/baseline/${TEST_PROJECT}"
    MONO_LOG="${BASELINE_DIR}/mono-console.log"
    
    # Download baseline if not exists
    if [ ! -f "$MONO_LOG" ]; then
        echo "[$COUNT/$TOTAL] Downloading: $TEST_PROJECT"
        "$SCRIPT_DIR/download-mono-baseline.sh" "$TEST_PROJECT" > /dev/null 2>&1 || {
            echo "  Failed to download $TEST_PROJECT"
            continue
        }
    fi
    
    # Extract duration from log
    if [ -f "$MONO_LOG" ]; then
        # Pattern: after X.XXX minutes with result
        DURATION=$(grep -oP 'after \K[0-9.]+(?= minutes)' "$MONO_LOG" 2>/dev/null | head -1)
        
        if [ -z "$DURATION" ]; then
            DURATION="N/A"
        fi
        
        # Find the .csproj file
        CSPROJ_PATH=$(find "$REPO_ROOT/src/libraries" -name "${TEST_PROJECT}.csproj" 2>/dev/null | head -1)
        if [ -n "$CSPROJ_PATH" ]; then
            # Make path relative to repo root
            CSPROJ_PATH=$(echo "$CSPROJ_PATH" | sed "s|$REPO_ROOT/||")
        else
            CSPROJ_PATH="(not found)"
        fi
        
        # Get assembly name (usually same as test project but with .dll)
        ASSEMBLY="${TEST_PROJECT}.dll"
        
        echo "$DURATION|$TEST_PROJECT|$ASSEMBLY|$CSPROJ_PATH" >> "$TEMP_DATA"
        echo "[$COUNT/$TOTAL] $TEST_PROJECT: ${DURATION} minutes"
    fi
done

echo ""
echo "Generating report..."

# Sort by duration (numeric, descending) and generate markdown
cat > "$OUTPUT_FILE" << 'EOF'
# Test Suites to Run

This table lists all browser test suites sorted by Mono baseline duration (longest first).

| Duration (min) | Assembly | csproj Path | Status |
|----------------|----------|-------------|--------|
EOF

# Sort by duration (handle N/A by putting them at the end)
sort -t'|' -k1 -rn "$TEMP_DATA" 2>/dev/null | while IFS='|' read -r DURATION PROJECT ASSEMBLY CSPROJ; do
    echo "| $DURATION | $ASSEMBLY | $CSPROJ | ⏳ Not started |" >> "$OUTPUT_FILE"
done

# Cleanup
rm -f "$TEMP_DATA"

echo ""
echo "Report generated: $OUTPUT_FILE"
echo ""
echo "Summary:"
wc -l < "$OUTPUT_FILE"
