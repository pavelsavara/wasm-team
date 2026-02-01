#!/bin/bash
# Auto-generated script to re-run passed tests
# Each line runs a single passed test method
#
# Usage: Run from the root of a runtime repository (runtime or runtime2)
#   bash ../wasm-team/scripts/run-all-ok-tests.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

"$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Options.Tests" "src/libraries/Microsoft.Extensions.Options/tests/Microsoft.Extensions.Options.Tests/Microsoft.Extensions.Options.Tests.csproj" -m Microsoft.Extensions.Options.Tests.OptionsTest.Configure_GetsNullableOptionsFromConfiguration
