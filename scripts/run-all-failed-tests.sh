#!/bin/bash
# Auto-generated script to run browser tests that were previously skipped
# Each line runs a single test method via run-test-suite.sh
#
# Usage: Run from the root of a runtime repository (runtime or runtime2)
#   bash ../wasm-team/scripts/run-all-failed-tests.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Tests from src/libraries/Microsoft.Extensions.Configuration/tests/FunctionalTests/Microsoft.Extensions.Configuration.Functional.Tests.csproj
# src/libraries/Microsoft.Extensions.Configuration/tests/FunctionalTests/ConfigurationTests.cs:896
"$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Configuration.Functional.Tests" "src/libraries/Microsoft.Extensions.Configuration/tests/FunctionalTests/Microsoft.Extensions.Configuration.Functional.Tests.csproj" -m Microsoft.Extensions.Configuration.Test.TestXmlSourceProvider.CanEnumerateProviders

# Tests from src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj
# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/MeterFactoryIntegrationTest.cs:15
"$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.MeterFactoryIntegrationTest.SocketsHttpHandler_Configured

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/MeterFactoryIntegrationTest.cs:31
"$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.MeterFactoryIntegrationTest.SocketsHttpHandler_HasExisting_Unchanged

