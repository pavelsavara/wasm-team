#!/bin/bash
# Auto-generated script to run browser tests that were previously skipped
# Each line runs a single test method via run-test-suite.sh
#
# Usage: Run from the root of a runtime repository (runtime or runtime2)
#   bash ../wasm-team/scripts/run-all-failed-tests.sh

# Don't use set -e - we want to continue running tests even if some fail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FAILED_COUNT=0
PASSED_COUNT=0

# Tests from src/libraries/Microsoft.Extensions.Configuration/tests/FunctionalTests/Microsoft.Extensions.Configuration.Functional.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Configuration.Functional.Tests" "src/libraries/Microsoft.Extensions.Configuration/tests/FunctionalTests/Microsoft.Extensions.Configuration.Functional.Tests.csproj" -m Microsoft.Extensions.Configuration.Test.ConfigurationTests.CanEnumerateProviders; then # src/libraries/Microsoft.Extensions.Configuration/tests/FunctionalTests/ConfigurationTests.cs:896
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.MeterFactoryIntegrationTest.SocketsHttpHandler_Configured; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/MeterFactoryIntegrationTest.cs:15
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.MeterFactoryIntegrationTest.SocketsHttpHandler_HasExisting_Unchanged; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/MeterFactoryIntegrationTest.cs:31
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_Parameterless_Success; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:30
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.DefaultPrimaryHandler_RespectsHandlerLifetime; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:49
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.DefaultPrimaryHandler_NamedClient_RespectsHandlerLifetime; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:64
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByAction_Success; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:80
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByBuilder_Success; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:104
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByIConfiguration_Success; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:129
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByIConfiguration_AllIntProperties; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:154
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByIConfiguration_AllBoolProperties; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:165
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByIConfiguration_AllTimeSpanProperties; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:176
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByIConfiguration_AutomaticDecompression; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:189
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByIConfiguration_KeepAlivePingPolicy; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:195
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ChainingActionAfterIConfiguration_Updates; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:226
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ChainingIConfigurationAfterAction_Updates; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:262
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_PresetSocketsHttpHandler_Updates; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:298
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.DependencyInjection.HttpClientFactoryServiceCollectionExtensionsTest.AddHttpClient_ConfigurePrimaryHttpMessageHandler_ApplyChangesPrimaryHandler; then # src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/DependencyInjection/HttpClientFactoryServiceCollectionExtensionsTest.cs:1386
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/Microsoft.Extensions.Options/tests/Microsoft.Extensions.Options.Tests/Microsoft.Extensions.Options.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Options.Tests" "src/libraries/Microsoft.Extensions.Options/tests/Microsoft.Extensions.Options.Tests/Microsoft.Extensions.Options.Tests.csproj" -m Microsoft.Extensions.Options.Tests.OptionsMonitorTest.InstantiatesOnlyOneOptionsInstance; then # src/libraries/Microsoft.Extensions.Options/tests/Microsoft.Extensions.Options.Tests/OptionsMonitorTest.cs:494
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Options.Tests" "src/libraries/Microsoft.Extensions.Options/tests/Microsoft.Extensions.Options.Tests/Microsoft.Extensions.Options.Tests.csproj" -m Microsoft.Extensions.Options.Tests.OptionsTest.Configure_GetsNullableOptionsFromConfiguration; then # src/libraries/Microsoft.Extensions.Options/tests/Microsoft.Extensions.Options.Tests/OptionsTest.cs:236
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestValidationSuccessResults; then # src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:18
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestBasicDataAnnotationFailures; then # src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:59
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestValidationWithNestedTypes; then # src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:88
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestValidationWithEnumeration; then # src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:124
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestObjectsWithIndexerProperties; then # src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:182
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestValidationWithCyclicReferences; then # src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:206
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestNewDataAnnotationFailures; then # src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:242
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestCustomGeneratedAttributes; then # src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:272
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestGeneratedRangeAttributeThreadSafety; then # src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:404
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m System.ComponentModel.DataAnnotations.EmitterTests.ProduceDiagnosticFromOtherAssemblyTest; then # src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Main.cs:1111
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m MyAssembly.EmitterTests.InternalsVisibleToAssembliesTest; then # src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Main.cs:1177
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m LanguageVersionTest.EmitterTests.InaccessibleValidationAttributesTest; then # src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Main.cs:1309
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Diagnostics.DiagnosticSource/tests/MetricOuterLoopTests/MetricOuterLoop1.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "MetricOuterLoop1.Tests" "src/libraries/System.Diagnostics.DiagnosticSource/tests/MetricOuterLoopTests/MetricOuterLoop1.Tests.csproj" -m System.Diagnostics.Metrics.Tests.MetricEventSourceTests.MultipleListeners_PublishingInstruments; then # src/libraries/System.Diagnostics.DiagnosticSource/tests/MetricOuterLoopTests/MetricEventSourceTests.cs:847
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Diagnostics.TraceSource.Config.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj" -m System.Diagnostics.TraceSourceConfigTests.ConfigurationTests.RuntimeFilterChange; then # src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/TraceSourceWithConfigurationTests.cs:38
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Diagnostics.TraceSource.Config.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj" -m System.Diagnostics.TraceSourceConfigTests.ConfigurationTests.Refresh_RemoveSwitch; then # src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/TraceSourceWithConfigurationTests.cs:99
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Diagnostics.TraceSource.Config.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj" -m System.Diagnostics.TraceSourceConfigTests.ConfigurationTests.Refresh_ChangeSwitch; then # src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/TraceSourceWithConfigurationTests.cs:140
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Diagnostics.TraceSource.Config.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj" -m System.Diagnostics.TraceSourceConfigTests.ConfigurationTests.Refresh_RemoveSource; then # src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/TraceSourceWithConfigurationTests.cs:166
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Diagnostics.TraceSource.Config.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj" -m System.Diagnostics.TraceSourceConfigTests.ConfigurationTests.ConfigWithEvents_RuntimeListener; then # src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/TraceSourceWithConfigurationTests.cs:200
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Diagnostics.TraceSource.Config.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj" -m System.Diagnostics.TraceSourceConfigTests.ConfigurationTests.AllTypes; then # src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/TraceSourceWithConfigurationTests.cs:267
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Diagnostics.TraceSource.Config.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj" -m System.Diagnostics.TraceSourceConfigTests.ConfigurationTests.Switch_MissingValue_Throws; then # src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/TraceSourceWithConfigurationTests.cs:312
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Diagnostics.TraceSource.Config.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj" -m System.Diagnostics.TraceSourceConfigTests.ConfigurationTests.UnsupportedAttribute_Throws; then # src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/TraceSourceWithConfigurationTests.cs:323
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Tests/System.Diagnostics.TraceSource.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Diagnostics.TraceSource.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Tests/System.Diagnostics.TraceSource.Tests.csproj" -m System.Diagnostics.TraceSourceTests.TraceListenerClassTests.WriteFooterTest_Callstack; then # src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Tests/TraceListenerClassTests.cs:316
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Diagnostics.TraceSource.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Tests/System.Diagnostics.TraceSource.Tests.csproj" -m System.Diagnostics.TraceSourceTests.TraceEventCacheClassTests.CallstackTest_NotEmpty; then # src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Tests/TraceEventCacheClassTests.cs:51
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Diagnostics.TraceSource.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Tests/System.Diagnostics.TraceSource.Tests.csproj" -m System.Diagnostics.TraceSourceTests.TraceEventCacheClassTests.CallstackTest_ContainsExpectedFrames; then # src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Tests/TraceEventCacheClassTests.cs:59
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Formats.Tar/tests/Manual/System.Formats.Tar.Manual.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Formats.Tar.Manual.Tests" "src/libraries/System.Formats.Tar/tests/Manual/System.Formats.Tar.Manual.Tests.csproj" -m System.Formats.Tar.Tests.ManualTests.WriteEntry_LongFileSize; then # src/libraries/System.Formats.Tar/tests/Manual/ManualTests.cs:33
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Formats.Tar.Manual.Tests" "src/libraries/System.Formats.Tar/tests/Manual/System.Formats.Tar.Manual.Tests.csproj" -m System.Formats.Tar.Tests.ManualTestsAsync.WriteEntry_LongFileSizeAsync; then # src/libraries/System.Formats.Tar/tests/Manual/ManualTestsAsync.cs:21
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Net.Http.Json/tests/FunctionalTests/System.Net.Http.Json.Functional.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Json.Functional.Tests" "src/libraries/System.Net.Http.Json/tests/FunctionalTests/System.Net.Http.Json.Functional.Tests.csproj" -m System.Net.Http.Json.Functional.Tests.HttpClientJsonExtensionsTests.GetFromJsonAsync_EnforcesMaxResponseContentBufferSize; then # src/libraries/System.Net.Http.Json/tests/FunctionalTests/HttpClientJsonExtensionsTests.cs:430
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Json.Functional.Tests" "src/libraries/System.Net.Http.Json/tests/FunctionalTests/System.Net.Http.Json.Functional.Tests.csproj" -m System.Net.Http.Json.Functional.Tests.HttpClientJsonExtensionsTests.GetFromJsonAsync_EnforcesTimeout; then # src/libraries/System.Net.Http.Json/tests/FunctionalTests/HttpClientJsonExtensionsTests.cs:465
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Json.Functional.Tests" "src/libraries/System.Net.Http.Json/tests/FunctionalTests/System.Net.Http.Json.Functional.Tests.csproj" -m System.Net.Http.Json.Functional.Tests.HttpClientJsonExtensionsTests.GetFromJsonAsAsyncEnumerable_EnforcesTimeout; then # src/libraries/System.Net.Http.Json/tests/FunctionalTests/HttpClientJsonExtensionsTests.cs:510
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.DiagnosticsTest.SendAsync_HeadersAreInjectedOnRedirects; then # src/libraries/System.Net.Http/tests/FunctionalTests/DiagnosticsTests.cs:1284
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.DiagnosticsTest.SendAsync_CustomSocketsHttpHandlerPropagator_PropagatorIsUsed; then # src/libraries/System.Net.Http/tests/FunctionalTests/DiagnosticsTests.cs:1377
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.DiagnosticsTest.SendAsync_PropagatorInjectsInvalidHeaders_Throws; then # src/libraries/System.Net.Http/tests/FunctionalTests/DiagnosticsTests.cs:1409
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.DiagnosticsTest.SendAsync_ReuseRequestInHandler_ResetsHeadersForEachReuse; then # src/libraries/System.Net.Http/tests/FunctionalTests/DiagnosticsTests.cs:1574
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.NtAuthTests.DefaultHandler_FakeServer_Success; then # src/libraries/System.Net.Http/tests/FunctionalTests/NtAuthTests.FakeServer.cs:118
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.NtAuthTests.DefaultHandler_FakeServer_DefaultCredentials; then # src/libraries/System.Net.Http/tests/FunctionalTests/NtAuthTests.FakeServer.cs:144
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientHandlerTest_Headers.SendAsync_UserAgent_CorrectlyWritten; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientHandlerTest.Headers.cs:50
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientHandlerTest_Headers.SendAsync_InvalidCharactersInHeader_Throw; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientHandlerTest.Headers.cs:140
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientHandlerTest_Headers.SendAsync_GetWithInvalidHostHeader_ThrowsException; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientHandlerTest.Headers.cs:390
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientHandlerTest_Headers.SendAsync_WithZeroLengthHeaderName_Throws; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientHandlerTest.Headers.cs:410
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientHandlerTest_Headers.SendAsync_CustomRequestEncodingSelector_CanSendNonAsciiHeaderValues; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientHandlerTest.Headers.cs:454
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientHandlerTest_Headers.SendAsync_CustomResponseEncodingSelector_CanReceiveNonAsciiHeaderValues; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientHandlerTest.Headers.cs:509
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientHandlerTest_Headers.SendAsync_InvalidCharactersInResponseHeader_ReplacedWithSpaces; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientHandlerTest.Headers.cs:599
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.Http1ResponseStreamZeroByteReadTestBase.ZeroByteRead_IssuesZeroByteReadOnUnderlyingStream; then # src/libraries/System.Net.Http/tests/FunctionalTests/ResponseStreamZeroByteReadTests.cs:83
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.GetContentAsync_WhenCannotConnect_ExceptionContainsHostInfo; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:297
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.CancelAllPending_AllPendingOperationsCanceled; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:767
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.Timeout_TooShort_AllPendingOperationsCanceled; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:785
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.Timeout_CallerCanceledTokenBeforeTimeout_TimeoutIsNotDetected; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:822
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.Send_SingleThread_Loopback_Succeeds; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:1017
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.Send_CancelledRequestContent_Throws; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:1072
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.Send_CancelledResponseContent_Throws; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:1161
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.Send_TimeoutResponseContent_Throws; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:1213
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.SendAsync_CorrectVersionSelected_LoopbackServer; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:1272
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.SendAsync_CorrectVersionSelected_ExternalServer; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:1322
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.CustomHttpClientTest.Send_NullRequest_ThrowsException; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:1638
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpContentTest.ReadAsStreamAsync_UseBaseImplementation_ContentGetsBufferedThenMemoryStreamReturned; then # src/libraries/System.Net.Http/tests/FunctionalTests/HttpContentTest.cs:301
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpMetricsTest.RequestDuration_ConnectionError_LogsExpectedErrorReason; then # src/libraries/System.Net.Http/tests/FunctionalTests/MetricsTest.cs:864
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpMetricsTest_Http11.RequestDuration_ConnectionClosedWhileReceivingHeaders_Recorded; then # src/libraries/System.Net.Http/tests/FunctionalTests/MetricsTest.cs:1092
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Net.Mail/tests/Functional/System.Net.Mail.Functional.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Mail.Functional.Tests" "src/libraries/System.Net.Mail/tests/Functional/System.Net.Mail.Functional.Tests.csproj" -m System.Net.Mail.Tests.MailMessageTest.SendMailMessageTest; then # src/libraries/System.Net.Mail/tests/Functional/MailMessageTest.cs:154
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Mail.Functional.Tests" "src/libraries/System.Net.Mail/tests/Functional/System.Net.Mail.Functional.Tests.csproj" -m System.Net.Mail.Tests.MailMessageTest.SentSpecialLengthMailAttachment_Base64Decode_Success; then # src/libraries/System.Net.Mail/tests/Functional/MailMessageTest.cs:226
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Net.NetworkInformation/tests/FunctionalTests/System.Net.NetworkInformation.Functional.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.NetworkInformation.Functional.Tests" "src/libraries/System.Net.NetworkInformation/tests/FunctionalTests/System.Net.NetworkInformation.Functional.Tests.csproj" -m System.Net.NetworkInformation.Tests.NetworkInterfaceBasicTest.NetworkInterface_LoopbackInterfaceIndex_MatchesReceivedPackets; then # src/libraries/System.Net.NetworkInformation/tests/FunctionalTests/NetworkInterfaceBasicTest.cs:280
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Net.Primitives/tests/FunctionalTests/System.Net.Primitives.Functional.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.Primitives.Functional.Tests" "src/libraries/System.Net.Primitives/tests/FunctionalTests/System.Net.Primitives.Functional.Tests.csproj" -m System.Net.Primitives.Functional.Tests.SocketAddressTest.ToString_UnsupportedFamily_Throws; then # src/libraries/System.Net.Primitives/tests/FunctionalTests/SocketAddressTest.cs:122
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Net.WebSockets.Client/tests/wasm/System.Net.WebSockets.Client.Wasm.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.WebSockets.Client.Wasm.Tests" "src/libraries/System.Net.WebSockets.Client/tests/wasm/System.Net.WebSockets.Client.Wasm.Tests.csproj" -m System.Net.WebSockets.Client.Wasm.Tests.BrowserTimerThrottlingTest.DotnetTimersAreHeavilyThrottledWithoutWebSocket; then # src/libraries/System.Net.WebSockets.Client/tests/wasm/BrowserTimerThrottlingTest.cs:33
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Net.WebSockets.Client.Wasm.Tests" "src/libraries/System.Net.WebSockets.Client/tests/wasm/System.Net.WebSockets.Client.Wasm.Tests.csproj" -m System.Net.WebSockets.Client.Wasm.Tests.BrowserTimerThrottlingTest.WebSocketKeepsDotnetTimersOnlyLightlyThrottled; then # src/libraries/System.Net.WebSockets.Client/tests/wasm/BrowserTimerThrottlingTest.cs:82
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.XML_EnumerableCollection; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.RuntimeOnly.cs:788
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m schema.XmlSerializerTests.SoapEncodedSerialization_SoapAttribute; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.RuntimeOnly.cs:2025
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m schema.XmlSerializerTests.Xml_Soap_WithNullables; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.RuntimeOnly.cs:2269
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m schema.XmlSerializerTests.XmlMembersMapping_TypeWithXmlAttributes; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.RuntimeOnly.cs:2720
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m schema.XmlSerializerTests.Xml_XmlTextAttributeTest; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.RuntimeOnly.cs:3453
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m schema.XmlSerializerTests.Xml_NookTypes; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.RuntimeOnly.cs:3516
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_TypeWithDateTimePropertyAsXmlTime; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:49
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_BaseClassAndDerivedClassWithSameProperty; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:496
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_Struct; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:631
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_Nullables; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:664
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_DerivedClasses; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:691
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_TypeWithDefaultTimeSpanProperty; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:931
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_TypeWithDateTimeOffsetProperty; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:975
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_TimeOnlyParseErrors; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:1099
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_TypeWithDateOnlyAndTimeOnly; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:1147
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_XsdDate_With_DateOnly_And_DateTime; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:1208
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_XsdTime_With_TimeOnly_And_DateTime; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:1274
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_BaseClassAndDerivedClass2WithSameProperty; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:1460
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_TypeWithTypesHavingCustomFormatter; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:1744
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_DeserializeHiddenMembersTest; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:2177
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_TypeInCollectibleALC; then # src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:2582
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Runtime.InteropServices.JavaScript/tests/System.Runtime.InteropServices.JavaScript.UnitTests/System.Runtime.InteropServices.JavaScript.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.InteropServices.JavaScript.Tests" "src/libraries/System.Runtime.InteropServices.JavaScript/tests/System.Runtime.InteropServices.JavaScript.UnitTests/System.Runtime.InteropServices.JavaScript.Tests.csproj" -m System.Runtime.InteropServices.JavaScript.Tests.SecondRuntimeTest.RunSecondRuntimeAndTestStaticState; then # src/libraries/System.Runtime.InteropServices.JavaScript/tests/System.Runtime.InteropServices.JavaScript.UnitTests/System/Runtime/InteropServices/JavaScript/SecondRuntimeTest.cs:14
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.ComVariantMarshallerTests.UnknownWrapper_Of_GeneratedComInterfaceType_Marshals_To_UNKNOWN; then # src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/ComVariantMarshallerTests.cs:330
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.GetFunctionPointerForDelegateTests.GetFunctionPointerForDelegate_NormalDelegateNonGeneric_ReturnsExpected; then # src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/GetFunctionPointerForDelegateTests.cs:14
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.GetFunctionPointerForDelegateTests.GetFunctionPointerForDelegate_MarshalledDelegateNonGeneric_ReturnsExpected; then # src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/GetFunctionPointerForDelegateTests.cs:27
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.GetFunctionPointerForDelegateTests.GetFunctionPointerForDelegate_NormalDelegateGeneric_ReturnsExpected; then # src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/GetFunctionPointerForDelegateTests.cs:44
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.GetFunctionPointerForDelegateTests.GetFunctionPointerForDelegate_MarshalledDelegateGeneric_ReturnsExpected; then # src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/GetFunctionPointerForDelegateTests.cs:57
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.GetFunctionPointerForDelegateTests.GetFunctionPointerForDelegate_MarshalledOpenStaticDelegate; then # src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/GetFunctionPointerForDelegateTests.cs:96
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.GetFunctionPointerForDelegateTests.GetFunctionPointerForDelegate_MarshalledClosedStaticDelegate; then # src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/GetFunctionPointerForDelegateTests.cs:106
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.QueryInterfaceTests.QueryInterface_ValidInterface_Success; then # src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/QueryInterfaceTests.cs:26
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.QueryInterfaceTests.QueryInterface_NoSuchInterface_Success; then # src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/QueryInterfaceTests.cs:61
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.AddRefTests.AddRef_ValidPointer_Success; then # src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/AddRefTests.cs:14
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.ReleaseTests.Release_ValidPointer_Success; then # src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/ReleaseTests.cs:14
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Runtime/tests/System.Buffers.Tests/System.Buffers.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Buffers.Tests" "src/libraries/System.Runtime/tests/System.Buffers.Tests/System.Buffers.Tests.csproj" -m System.Buffers.ArrayPool.Tests.ArrayPoolUnitTests.RentingGiganticArraySucceedsOrOOMs; then # src/libraries/System.Runtime/tests/System.Buffers.Tests/ArrayPool/UnitTests.cs:85
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Runtime/tests/System.Globalization.Calendars.Tests/System.Globalization.Calendars.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Globalization.Calendars.Tests" "src/libraries/System.Runtime/tests/System.Globalization.Calendars.Tests/System.Globalization.Calendars.Tests.csproj" -m System.Globalization.Tests.TaiwanCalendarDaysAndMonths.DayNames_MonthNames; then # src/libraries/System.Runtime/tests/System.Globalization.Calendars.Tests/TaiwanCalendar/TaiwanCalendarDaysAndMonths.cs:12
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Runtime/tests/System.Globalization.Tests/System.Globalization.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Globalization.Tests" "src/libraries/System.Runtime/tests/System.Globalization.Tests/System.Globalization.Tests.csproj" -m System.Globalization.Tests.TextInfoMiscTests.TestAsciiCodePageWithCulturesWithAlternativeSortNames; then # src/libraries/System.Runtime/tests/System.Globalization.Tests/System/Globalization/TextInfoTests.cs:526
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/System.IO.FileSystem.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.IO.FileSystem.Tests" "src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/System.IO.FileSystem.Tests.csproj" -m System.IO.Tests.RandomAccess_Base.ThrowsNotSupportedExceptionForUnseekableFile; then # src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/RandomAccess/Base.cs:54
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.IO.FileSystem.Tests" "src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/System.IO.FileSystem.Tests.csproj" -m System.IO.Tests.RandomAccess_FlushToDisk.CanFlushUnseekableFile; then # src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/RandomAccess/FlushToDisk.cs:87
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.IO.FileSystem.Tests" "src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/System.IO.FileSystem.Tests.csproj" -m System.IO.Tests.File_GetSetTimes.SetLastWriteTimeTicks; then # src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/File/GetSetTimes.cs:141
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.IO.FileSystem.Tests" "src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/System.IO.FileSystem.Tests.csproj" -m System.IO.Tests.File_GetSetTimes.SetLastAccessTimeTicks; then # src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/File/GetSetTimes.cs:188
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.IO.FileSystem.Tests" "src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/System.IO.FileSystem.Tests.csproj" -m System.IO.Tests.File_Create_str.LongPathSegment; then # src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/File/Create.cs:184
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.IO.FileSystem.Tests" "src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/System.IO.FileSystem.Tests.csproj" -m System.IO.Tests.Directory_CreateDirectory.DirectoryWithComponentLongerThanMaxComponentAsPath_ThrowsException; then # src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/Directory/CreateDirectory.cs:218
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.IO.FileSystem.Tests" "src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/System.IO.FileSystem.Tests.csproj" -m System.IO.Tests.FileStream_Flush.FlushCanBeUsedOnPipes_Success; then # src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/FileStream/Flush.cs:181
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Runtime/tests/System.IO.Tests/System.IO.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.IO.Tests" "src/libraries/System.Runtime/tests/System.IO.Tests/System.IO.Tests.csproj" -m System.IO.Tests.BufferedStream_StreamAsync.NoInt32OverflowInTheBufferingLogic; then # src/libraries/System.Runtime/tests/System.IO.Tests/BufferedStream/BufferedStreamTests.cs:352
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.IO.Tests" "src/libraries/System.Runtime/tests/System.IO.Tests/System.IO.Tests.csproj" -m System.IO.Tests.StreamReaderTests_Serial.ReadToEndAsync_WithCancellation; then # src/libraries/System.Runtime/tests/System.IO.Tests/StreamReader/StreamReaderTests_Serial.cs:22
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.IO.Tests" "src/libraries/System.Runtime/tests/System.IO.Tests/System.IO.Tests.csproj" -m System.IO.Tests.StreamReaderTests.ReadAsync_Canceled_ThrowsException; then # src/libraries/System.Runtime/tests/System.IO.Tests/StreamReader/StreamReaderTests.cs:584
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Runtime/tests/System.IO.UnmanagedMemoryStream.Tests/System.IO.UnmanagedMemoryStream.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.IO.UnmanagedMemoryStream.Tests" "src/libraries/System.Runtime/tests/System.IO.UnmanagedMemoryStream.Tests/System.IO.UnmanagedMemoryStream.Tests.csproj" -m System.IO.Tests.Uma_ReadWriteStructArray.UmaReadWriteGenericStringStructArray_ThrowsArgumentException; then # src/libraries/System.Runtime/tests/System.IO.UnmanagedMemoryStream.Tests/Uma.ReadWriteStructArray.cs:118
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Runtime/tests/System.Reflection.Tests/System.Reflection.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Reflection.Tests" "src/libraries/System.Runtime/tests/System.Reflection.Tests/System.Reflection.Tests.csproj" -m System.Reflection.Tests.AssemblyTests.GetType_DefaultsToItself; then # src/libraries/System.Runtime/tests/System.Reflection.Tests/AssemblyTests.cs:328
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Reflection.Tests" "src/libraries/System.Runtime/tests/System.Reflection.Tests/System.Reflection.Tests.csproj" -m System.Reflection.Tests.AssemblyTests.CodeBase; then # src/libraries/System.Runtime/tests/System.Reflection.Tests/AssemblyTests.cs:571
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Reflection.Tests" "src/libraries/System.Runtime/tests/System.Reflection.Tests/System.Reflection.Tests.csproj" -m System.Reflection.Tests.AssemblyTests.GetCallingAssembly; then # src/libraries/System.Runtime/tests/System.Reflection.Tests/AssemblyTests.cs:728
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Reflection.Tests" "src/libraries/System.Runtime/tests/System.Reflection.Tests/System.Reflection.Tests.csproj" -m System.Reflection.Tests.AssemblyTests.GetCallingAssemblyInCctor; then # src/libraries/System.Runtime/tests/System.Reflection.Tests/AssemblyTests.cs:737
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Reflection.Tests" "src/libraries/System.Runtime/tests/System.Reflection.Tests/System.Reflection.Tests.csproj" -m System.Reflection.Tests.AssemblyNameTests.GetAssemblyName_LockedFile; then # src/libraries/System.Runtime/tests/System.Reflection.Tests/AssemblyNameTests.cs:307
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System.Runtime.Extensions.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System.Runtime.Extensions.Tests.csproj" -m System.Tests.EnvironmentTests.GetFolderPath_Unix_SpecialFolderDoesNotExist_CreatesSuccessfully; then # src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System/EnvironmentTests.cs:362
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System.Runtime.Extensions.Tests.csproj" -m System.Tests.EnvironmentStackTrace.StackTraceDoesNotStartWithInternalFrame; then # src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System/Environment.StackTrace.cs:71
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System.Runtime.Extensions.Tests.csproj" -m System.Tests.AppDomainTests.TargetFrameworkTest; then # src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System/AppDomainTests.cs:49
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System.Runtime.Extensions.Tests.csproj" -m System.Tests.AppDomainTests.LoadBytes; then # src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System/AppDomainTests.cs:370
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System.Runtime.Extensions.Tests.csproj" -m System.Tests.AppDomainTests.MonitoringIsEnabled; then # src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System/AppDomainTests.cs:385
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System.Runtime.Extensions.Tests.csproj" -m System.Reflection.Tests.AssemblyNameProxyTests.GetAssemblyName_AssemblyNameProxy; then # src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System/Reflection/AssemblyNameProxyTests.cs:16
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Runtime/tests/System.Runtime.InteropServices.RuntimeInformation.Tests/System.Runtime.InteropServices.RuntimeInformation.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.InteropServices.RuntimeInformation.Tests" "src/libraries/System.Runtime/tests/System.Runtime.InteropServices.RuntimeInformation.Tests/System.Runtime.InteropServices.RuntimeInformation.Tests.csproj" -m System.Runtime.InteropServices.RuntimeInformationTests.DescriptionNameTests.DumpRuntimeInformationToConsole; then # src/libraries/System.Runtime/tests/System.Runtime.InteropServices.RuntimeInformation.Tests/DescriptionNameTests.cs:20
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.InteropServices.RuntimeInformation.Tests" "src/libraries/System.Runtime/tests/System.Runtime.InteropServices.RuntimeInformation.Tests/System.Runtime.InteropServices.RuntimeInformation.Tests.csproj" -m System.Runtime.InteropServices.RuntimeInformationTests.DescriptionNameTests.DumpRuntimeInformationToConsoleOuter; then # src/libraries/System.Runtime/tests/System.Runtime.InteropServices.RuntimeInformation.Tests/DescriptionNameTests.cs:174
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DoubleTests_GenericMath.ConvertToIntegerTest; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DoubleTests.GenericMath.cs:349
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DoubleTests_GenericMath.ConvertToIntegerNativeTest; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DoubleTests.GenericMath.cs:402
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DelegateTests.DynamicInvoke_DefaultParameter_ValueTypeParameterWithExplicitValue; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:318
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DelegateTests.DynamicInvoke_DefaultParameter_DateTimeParameterWithMissingValue; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:327
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DelegateTests.DynamicInvoke_DateTimeAndCustomConstantAttribute_DateTimeParameterWithMissingValue; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:336
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DelegateTests.DynamicInvoke_CustomConstantAndDateTimeAttribute_DateTimeParameterWithMissingValue; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:345
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DelegateTests.DynamicInvoke_CustomConstantAttribute_DateTimeParameterWithMissingValue; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:354
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DelegateTests.DynamicInvoke_DefaultParameter_DateTimeParameterWithExplicitValue; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:363
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DelegateTests.DynamicInvoke_DefaultParameter_DecimalParameterWithAttributeAndMissingValue; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:372
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DelegateTests.DynamicInvoke_DecimalAndCustomConstantAttribute_DecimalParameterWithAttributeAndMissingValue; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:381
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DelegateTests.DynamicInvoke_CustomConstantAndDecimalAttribute_DecimalParameterWithAttributeAndMissingValue; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:390
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DelegateTests.DynamicInvoke_CustomConstantAttribute_DecimalParameterWithAttributeAndMissingValue; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:399
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DelegateTests.DynamicInvoke_DefaultParameter_DecimalParameterWithAttributeAndExplicitValue; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:408
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DelegateTests.DynamicInvoke_DefaultParameter_DecimalParameterWithMissingValue; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:417
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DelegateTests.DynamicInvoke_DefaultParameter_DecimalParameterWithExplicitValue; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:426
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DelegateTests.DynamicInvoke_DefaultParameter_NullableIntWithExplicitValue; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:441
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.HalfTests_GenericMath.ParseValidStringTest; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/HalfTests.GenericMath.cs:2457
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.HalfTests_GenericMath.ParseValidSpanTest; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/HalfTests.GenericMath.cs:2532
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.SingleTests_GenericMath.ConvertToIntegerTest; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/SingleTests.GenericMath.cs:349
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.SingleTests_GenericMath.ConvertToIntegerNativeTest; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/SingleTests.GenericMath.cs:402
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DateTimeTests.DateTimeParsingWithBiDiCultureTest; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DateTimeTests.cs:1280
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DateTimeTests.GetObjectData_Invoke_ReturnsExpected; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DateTimeTests.cs:2725
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.ActivatorTests.CreateInstanceT_StructWithPrivateDefaultConstructor_ThrowsMissingMethodException; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/ActivatorTests.Generic.cs:52
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Ctor_IntArray; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:138
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Ctor_IntSpan; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:146
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Ctor_Int_Int_Int_Bool_Byte; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:252
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Add_Overflows_ThrowsOverflowException; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:336
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Remainder; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:1124
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Round_Digits_ReturnsExpected; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:1206
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Round_DigitsMode_ReturnsExpected; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:1240
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Subtract; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:1311
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Subtract_Invalid; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:1330
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Test; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:1717
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.ActivatorTests.TestingCreateInstanceObjectHandle; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/ActivatorTests.cs:785
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.ActivatorTests.TestingCreateInstanceObjectHandleFullSignature; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/ActivatorTests.cs:864
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.GCTests.Collect_CallsFinalizer; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/GCTests.cs:84
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.GCTests.KeepAlive; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/GCTests.cs:142
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.GCTests.KeepAlive_Null; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/GCTests.cs:193
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.GCTests.ReRegisterForFinalize; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/GCTests.cs:355
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DoubleTests.ParsePatterns; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DoubleTests.cs:390
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.TimeZoneInfoTests.UsingAlternativeTimeZoneIdsTest; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/TimeZoneInfoTests.cs:2491
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.StringTests.Contains_Rune_StringComparison; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/StringTests.cs:325
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.StringTests.GetHashCode_NoSuchStringComparison_ThrowsArgumentException; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/StringTests.cs:1239
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.UInt128Tests.CompareTo_Other_ReturnsExpected; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/UInt128Tests.cs:52
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.UInt128Tests.Parse_Valid; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/UInt128Tests.cs:257
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.UInt128Tests.Parse_Span_Valid; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/UInt128Tests.cs:392
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.UInt128Tests.Parse_Utf8Span_Valid; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/UInt128Tests.cs:434
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.ExceptionTests.Exception_TargetSite_OtherMethod; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/ExceptionTests.cs:95
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.ExceptionTests.Exception_TargetSite_Rethrow; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/ExceptionTests.cs:103
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.Int128Tests.CompareTo_Other_ReturnsExpected; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Int128Tests.cs:61
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.Int128Tests.Parse_Valid; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Int128Tests.cs:328
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.Int128Tests.Parse_Span_Valid; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Int128Tests.cs:450
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.Int128Tests.Parse_Utf8Span_Valid; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Int128Tests.cs:492
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.HalfTests.ExplicitConversion_FromSingle; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/HalfTests.cs:558
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.HalfTests.Parse_Utf8Span_Valid; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/HalfTests.cs:897
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.ArgIteratorTests.ArgIterator_GetRemainingCount_GetNextArg; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/ArgIteratorTests.cs:12
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Runtime.Tests.JitInfoTests.JitInfoCurrentThreadIsPopulated; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Runtime/JitInfoTests.cs:119
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Threading.Tests.PeriodicTimerTests.Dispose_Idempotent; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Threading/PeriodicTimerTests.cs:68
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Threading.Tests.PeriodicTimerTests.WaitForNextTickAsync_ConcurrentDisposeAfterTicks_EventuallyReturnsFalse; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Threading/PeriodicTimerTests.cs:122
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Threading.Tests.PeriodicTimerTests.PeriodicTimer_NoActiveOperations_TimerNotRooted; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Threading/PeriodicTimerTests.cs:142
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Threading.Tests.PeriodicTimerTests.PeriodicTimer_ActiveOperations_TimerRooted; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Threading/PeriodicTimerTests.cs:155
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Text.Tests.EncodingTests.GetEncoding_FromProvider_ByCodePage_WithDisallowedEncoding_Throws; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Text/EncodingTests.cs:34
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Text.Tests.EncodingTests.GetEncoding_FromProvider_ByEncodingName_WithDisallowedEncoding_Throws; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Text/EncodingTests.cs:65
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Text.Tests.EncodingTests.GetEncodings_FromProvider_DoesNotContainDisallowedEncodings; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Text/EncodingTests.cs:95
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Text.Tests.CompositeFormatTests.DebuggerDisplay_ShowsFormat; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Text/CompositeFormatTests.cs:44
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.ModuleTests.FullyQualifiedName; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Reflection/ModuleTests.cs:84
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.ModuleTests.Name; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Reflection/ModuleTests.cs:103
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.ModuleTests.GetMethod_AmbiguousMatch; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Reflection/ModuleTests.cs:212
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.ModuleTests.GetMethod; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Reflection/ModuleTests.cs:221
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.ModuleTests.GetMethods; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Reflection/ModuleTests.cs:238
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.InvokeWithRefLikeArgs.MethodTakesRefToRefStructAsArg_ThrowsNSE; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Reflection/InvokeWithRefLikeArgs.cs:40
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.InvokeWithRefLikeArgs.MethodTakesOutToRefStructAsArg_ThrowsNSE; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Reflection/InvokeWithRefLikeArgs.cs:56
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.TypeTests.GetTypeByName_InvokeViaReflection_Success; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Type/TypeTests.cs:566
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Runtime.Tests.TotalOrderIeee754ComparerTests.TotalOrderTestInvalidSignificand; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Numerics/TotalOrderIeee754ComparerTests.cs:140
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Runtime.CompilerServices.Tests.RuntimeFeatureTests.DynamicCode_Jit; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Runtime/CompilerServices/RuntimeFeatureTests.cs:35
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Runtime.ExceptionServices.Tests.ExceptionDispatchInfoTests.SetCurrentStackTrace_IncludedInExceptionStackTrace; then # src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Runtime/ExceptionServices/ExceptionDispatchInfoTests.cs:56
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Runtime/tests/System.Threading.Tasks.Extensions.Tests/System.Threading.Tasks.Extensions.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Threading.Tasks.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Extensions.Tests/System.Threading.Tasks.Extensions.Tests.csproj" -m System.Threading.Tasks.Tests.ValueTaskTests.NonGeneric_AsyncMethodBuilderAttribute_ValueTaskAttributed; then # src/libraries/System.Runtime/tests/System.Threading.Tasks.Extensions.Tests/ValueTaskTests.cs:1170
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Threading.Tasks.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Extensions.Tests/System.Threading.Tasks.Extensions.Tests.csproj" -m System.Threading.Tasks.Tests.ValueTaskTests.Generic_AsyncMethodBuilderAttribute_ValueTaskAttributed; then # src/libraries/System.Runtime/tests/System.Threading.Tasks.Extensions.Tests/ValueTaskTests.cs:1183
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Threading.Tasks.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj" -m TaskCoverage.Coverage.CancellationTokenRegitration; then # src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/MethodCoverage.cs:298
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Threading.Tasks.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj" -m TaskCoverage.Coverage.TaskAwaiter; then # src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/MethodCoverage.cs:316
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Threading.Tasks.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj" -m System.Threading.Tasks.Tests.TaskContinueWithTests.TestNoDeadlockOnContinueWith; then # src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/Task/TaskContinueWithTests.cs:1079
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Threading.Tasks.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj" -m System.Threading.Tasks.Tests.TaskContinueWithTests.LongContinuationChain_ContinueWith_DoesNotStackOverflow; then # src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/Task/TaskContinueWithTests.cs:1227
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Threading.Tasks.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj" -m System.Threading.Tasks.Tests.TaskContinueWithTests.LongContinuationChain_Await_DoesNotStackOverflow; then # src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/Task/TaskContinueWithTests.cs:1259
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Threading.Tasks.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj" -m System.Threading.Tasks.Tests.AsyncEnumerableToBlockingEnumerableTests.AsyncEnumerableWithDelays; then # src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/Task/AsyncEnumerableToBlockingEnumerableTests.cs:63
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Threading.Tasks.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj" -m System.Threading.Tasks.Tests.AsyncEnumerableToBlockingEnumerableTests.AsyncEnumerableWithException; then # src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/Task/AsyncEnumerableToBlockingEnumerableTests.cs:98
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Threading.Tasks.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj" -m System.Threading.Tasks.Tests.AsyncEnumerableToBlockingEnumerableTests.AsyncEnumerableWithCancellation; then # src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/Task/AsyncEnumerableToBlockingEnumerableTests.cs:127
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Runtime/tests/System.Threading.Timer.Tests/System.Threading.Timer.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Threading.Timer.Tests" "src/libraries/System.Runtime/tests/System.Threading.Timer.Tests/System.Threading.Timer.Tests.csproj" -m System.Threading.Tests.TimerFiringTests.Timer_ManyDifferentSerialSingleDueTimes_AllFireWithinAllowedRange; then # src/libraries/System.Runtime/tests/System.Threading.Timer.Tests/TimerFiringTests.cs:287
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
# Tests from src/libraries/System.Text.RegularExpressions/tests/FunctionalTests/System.Text.RegularExpressions.Tests.csproj
if "$SCRIPT_DIR/run-test-suite.sh" "System.Text.RegularExpressions.Tests" "src/libraries/System.Text.RegularExpressions/tests/FunctionalTests/System.Text.RegularExpressions.Tests.csproj" -m System.Text.RegularExpressions.Tests.RegexIgnoreCaseTests.SourceGenerator_Supports_All_Cultures; then # src/libraries/System.Text.RegularExpressions/tests/FunctionalTests/RegexIgnoreCaseTests.cs:132
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi
if "$SCRIPT_DIR/run-test-suite.sh" "System.Text.RegularExpressions.Tests" "src/libraries/System.Text.RegularExpressions/tests/FunctionalTests/System.Text.RegularExpressions.Tests.csproj" -m System.Text.RegularExpressions.Tests.RegexKnownPatternTests.PatternsDataSet_ConstructRegexForAll_SourceGenerated; then # src/libraries/System.Text.RegularExpressions/tests/FunctionalTests/Regex.KnownPattern.Tests.cs:1554
    ((PASSED_COUNT++))
else
    ((FAILED_COUNT++))
fi

echo ""
echo "========================================"
echo "SUMMARY: $PASSED_COUNT passed, $FAILED_COUNT failed"
echo "========================================"

if [ $FAILED_COUNT -gt 0 ]; then
    exit 1
fi
"$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.MeterFactoryIntegrationTest.SocketsHttpHandler_Configured
"$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.MeterFactoryIntegrationTest.SocketsHttpHandler_HasExisting_Unchanged
"$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_Parameterless_Success
"$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.DefaultPrimaryHandler_RespectsHandlerLifetime
"$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.DefaultPrimaryHandler_NamedClient_RespectsHandlerLifetime
"$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByAction_Success
"$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByBuilder_Success
"$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByIConfiguration_Success
