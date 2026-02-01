#!/bin/bash
# Auto-generated script to run browser tests that were previously skipped
# Each line runs a single test method via run-test-suite.sh

set -e

# Tests from src/libraries/Microsoft.Extensions.Configuration/tests/FunctionalTests/Microsoft.Extensions.Configuration.Functional.Tests.csproj
# src/libraries/Microsoft.Extensions.Configuration/tests/FunctionalTests/ConfigurationTests.cs:896
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Configuration.Functional.Tests" "src/libraries/Microsoft.Extensions.Configuration/tests/FunctionalTests/Microsoft.Extensions.Configuration.Functional.Tests.csproj" -m Microsoft.Extensions.Configuration.Test.TestXmlSourceProvider.CanEnumerateProviders

# Tests from src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj
# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/MeterFactoryIntegrationTest.cs:15
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.MeterFactoryIntegrationTest.SocketsHttpHandler_Configured

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/MeterFactoryIntegrationTest.cs:31
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.MeterFactoryIntegrationTest.SocketsHttpHandler_HasExisting_Unchanged

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:30
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_Parameterless_Success

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:49
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.DefaultPrimaryHandler_RespectsHandlerLifetime

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:64
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.DefaultPrimaryHandler_NamedClient_RespectsHandlerLifetime

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:80
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByAction_Success

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:104
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByBuilder_Success

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:129
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByIConfiguration_Success

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:154
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByIConfiguration_AllIntProperties

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:165
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByIConfiguration_AllBoolProperties

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:176
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByIConfiguration_AllTimeSpanProperties

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:189
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByIConfiguration_AutomaticDecompression

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:195
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ConfiguredByIConfiguration_KeepAlivePingPolicy

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:226
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ChainingActionAfterIConfiguration_Updates

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:262
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_ChainingIConfigurationAfterAction_Updates

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/SocketsHttpHandlerConfigurationTest.cs:298
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.Http.SocketsHttpHandlerConfigurationTest.UseSocketsHttpHandler_PresetSocketsHttpHandler_Updates

# src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/DependencyInjection/HttpClientFactoryServiceCollectionExtensionsTest.cs:1386
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Http.Tests" "src/libraries/Microsoft.Extensions.Http/tests/Microsoft.Extensions.Http.Tests/Microsoft.Extensions.Http.Tests.csproj" -m Microsoft.Extensions.DependencyInjection.HttpClientFactoryServiceCollectionExtensionsTest.AddHttpClient_ConfigurePrimaryHttpMessageHandler_ApplyChangesPrimaryHandler

# Tests from src/libraries/Microsoft.Extensions.Options/tests/Microsoft.Extensions.Options.Tests/Microsoft.Extensions.Options.Tests.csproj
# src/libraries/Microsoft.Extensions.Options/tests/Microsoft.Extensions.Options.Tests/OptionsMonitorTest.cs:494
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Options.Tests" "src/libraries/Microsoft.Extensions.Options/tests/Microsoft.Extensions.Options.Tests/Microsoft.Extensions.Options.Tests.csproj" -m Microsoft.Extensions.Options.Tests.ImplementedOptionsCache.InstantiatesOnlyOneOptionsInstance

# src/libraries/Microsoft.Extensions.Options/tests/Microsoft.Extensions.Options.Tests/OptionsTest.cs:236
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Options.Tests" "src/libraries/Microsoft.Extensions.Options/tests/Microsoft.Extensions.Options.Tests/Microsoft.Extensions.Options.Tests.csproj" -m Microsoft.Extensions.Options.Tests.OptionsTest.Configure_GetsNullableOptionsFromConfiguration

# Tests from src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj
# src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:18
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestValidationSuccessResults

# src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:59
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestBasicDataAnnotationFailures

# src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:88
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestValidationWithNestedTypes

# src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:124
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestValidationWithEnumeration

# src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:182
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestObjectsWithIndexerProperties

# src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:206
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestValidationWithCyclicReferences

# src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:242
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestNewDataAnnotationFailures

# src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:272
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestCustomGeneratedAttributes

# src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/OptionsRuntimeTests.cs:404
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m Microsoft.Gen.OptionsValidation.Unit.Test.OptionsRuntimeTests.TestGeneratedRangeAttributeThreadSafety

# src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Main.cs:1111
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m System.ComponentModel.DataAnnotations.SecondValidator.ProduceDiagnosticFromOtherAssemblyTest

# src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Main.cs:1177
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m MyAssembly.and.InternalsVisibleToAssembliesTest

# src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Main.cs:1309
./browser-tests/run-test-suite.sh "Microsoft.Extensions.Options.SourceGeneration.Unit.Tests" "src/libraries/Microsoft.Extensions.Options/tests/SourceGeneration.Unit.Tests/Microsoft.Extensions.Options.SourceGeneration.Unit.Tests.csproj" -m LanguageVersionTest.__Validators_.InaccessibleValidationAttributesTest

# Tests from src/libraries/System.Diagnostics.DiagnosticSource/tests/MetricOuterLoopTests/MetricOuterLoop1.Tests.csproj
# src/libraries/System.Diagnostics.DiagnosticSource/tests/MetricOuterLoopTests/MetricEventSourceTests.cs:847
./browser-tests/run-test-suite.sh "MetricOuterLoop1.Tests" "src/libraries/System.Diagnostics.DiagnosticSource/tests/MetricOuterLoopTests/MetricOuterLoop1.Tests.csproj" -m System.Diagnostics.Metrics.Tests.MetricEventSourceTests.MultipleListeners_PublishingInstruments

# Tests from src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj
# src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/TraceSourceWithConfigurationTests.cs:38
./browser-tests/run-test-suite.sh "System.Diagnostics.TraceSource.Config.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj" -m System.Diagnostics.TraceSourceConfigTests.ConfigurationTests.RuntimeFilterChange

# src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/TraceSourceWithConfigurationTests.cs:99
./browser-tests/run-test-suite.sh "System.Diagnostics.TraceSource.Config.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj" -m System.Diagnostics.TraceSourceConfigTests.ConfigurationTests.Refresh_RemoveSwitch

# src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/TraceSourceWithConfigurationTests.cs:140
./browser-tests/run-test-suite.sh "System.Diagnostics.TraceSource.Config.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj" -m System.Diagnostics.TraceSourceConfigTests.ConfigurationTests.Refresh_ChangeSwitch

# src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/TraceSourceWithConfigurationTests.cs:166
./browser-tests/run-test-suite.sh "System.Diagnostics.TraceSource.Config.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj" -m System.Diagnostics.TraceSourceConfigTests.ConfigurationTests.Refresh_RemoveSource

# src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/TraceSourceWithConfigurationTests.cs:200
./browser-tests/run-test-suite.sh "System.Diagnostics.TraceSource.Config.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj" -m System.Diagnostics.TraceSourceConfigTests.ConfigurationTests.ConfigWithEvents_RuntimeListener

# src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/TraceSourceWithConfigurationTests.cs:267
./browser-tests/run-test-suite.sh "System.Diagnostics.TraceSource.Config.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj" -m System.Diagnostics.TraceSourceConfigTests.ConfigurationTests.AllTypes

# src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/TraceSourceWithConfigurationTests.cs:312
./browser-tests/run-test-suite.sh "System.Diagnostics.TraceSource.Config.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj" -m System.Diagnostics.TraceSourceConfigTests.ConfigurationTests.Switch_MissingValue_Throws

# src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/TraceSourceWithConfigurationTests.cs:323
./browser-tests/run-test-suite.sh "System.Diagnostics.TraceSource.Config.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Config.Tests/System.Diagnostics.TraceSource.Config.Tests.csproj" -m System.Diagnostics.TraceSourceConfigTests.ConfigurationTests.UnsupportedAttribute_Throws

# Tests from src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Tests/System.Diagnostics.TraceSource.Tests.csproj
# src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Tests/TraceListenerClassTests.cs:316
./browser-tests/run-test-suite.sh "System.Diagnostics.TraceSource.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Tests/System.Diagnostics.TraceSource.Tests.csproj" -m System.Diagnostics.TraceSourceTests.TraceListenerClassTests.WriteFooterTest_Callstack

# src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Tests/TraceEventCacheClassTests.cs:51
./browser-tests/run-test-suite.sh "System.Diagnostics.TraceSource.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Tests/System.Diagnostics.TraceSource.Tests.csproj" -m System.Diagnostics.TraceSourceTests.TraceEventCacheClassTests.CallstackTest_NotEmpty

# src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Tests/TraceEventCacheClassTests.cs:59
./browser-tests/run-test-suite.sh "System.Diagnostics.TraceSource.Tests" "src/libraries/System.Diagnostics.TraceSource/tests/System.Diagnostics.TraceSource.Tests/System.Diagnostics.TraceSource.Tests.csproj" -m System.Diagnostics.TraceSourceTests.TraceEventCacheClassTests.CallstackTest_ContainsExpectedFrames

# Tests from src/libraries/System.Formats.Tar/tests/Manual/System.Formats.Tar.Manual.Tests.csproj
# src/libraries/System.Formats.Tar/tests/Manual/ManualTests.cs:33
./browser-tests/run-test-suite.sh "System.Formats.Tar.Manual.Tests" "src/libraries/System.Formats.Tar/tests/Manual/System.Formats.Tar.Manual.Tests.csproj" -m System.Formats.Tar.Tests.ManualTests.WriteEntry_LongFileSize

# src/libraries/System.Formats.Tar/tests/Manual/ManualTestsAsync.cs:21
./browser-tests/run-test-suite.sh "System.Formats.Tar.Manual.Tests" "src/libraries/System.Formats.Tar/tests/Manual/System.Formats.Tar.Manual.Tests.csproj" -m System.Formats.Tar.Tests.ManualTestsAsync.WriteEntry_LongFileSizeAsync

# Tests from src/libraries/System.Net.Http.Json/tests/FunctionalTests/System.Net.Http.Json.Functional.Tests.csproj
# src/libraries/System.Net.Http.Json/tests/FunctionalTests/HttpClientJsonExtensionsTests.cs:430
./browser-tests/run-test-suite.sh "System.Net.Http.Json.Functional.Tests" "src/libraries/System.Net.Http.Json/tests/FunctionalTests/System.Net.Http.Json.Functional.Tests.csproj" -m System.Net.Http.Json.Functional.Tests.HttpClientJsonExtensionsTests.GetFromJsonAsync_EnforcesMaxResponseContentBufferSize

# src/libraries/System.Net.Http.Json/tests/FunctionalTests/HttpClientJsonExtensionsTests.cs:465
./browser-tests/run-test-suite.sh "System.Net.Http.Json.Functional.Tests" "src/libraries/System.Net.Http.Json/tests/FunctionalTests/System.Net.Http.Json.Functional.Tests.csproj" -m System.Net.Http.Json.Functional.Tests.HttpClientJsonExtensionsTests.GetFromJsonAsync_EnforcesTimeout

# src/libraries/System.Net.Http.Json/tests/FunctionalTests/HttpClientJsonExtensionsTests.cs:510
./browser-tests/run-test-suite.sh "System.Net.Http.Json.Functional.Tests" "src/libraries/System.Net.Http.Json/tests/FunctionalTests/System.Net.Http.Json.Functional.Tests.csproj" -m System.Net.Http.Json.Functional.Tests.HttpClientJsonExtensionsTests.GetFromJsonAsAsyncEnumerable_EnforcesTimeout

# Tests from src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj
# src/libraries/System.Net.Http/tests/FunctionalTests/DiagnosticsTests.cs:1284
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.DiagnosticsTest.SendAsync_HeadersAreInjectedOnRedirects

# src/libraries/System.Net.Http/tests/FunctionalTests/DiagnosticsTests.cs:1377
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.DiagnosticsTest.SendAsync_CustomSocketsHttpHandlerPropagator_PropagatorIsUsed

# src/libraries/System.Net.Http/tests/FunctionalTests/DiagnosticsTests.cs:1409
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.DiagnosticsTest.SendAsync_PropagatorInjectsInvalidHeaders_Throws

# src/libraries/System.Net.Http/tests/FunctionalTests/DiagnosticsTests.cs:1574
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.SendMultipleTimesHandler.SendAsync_ReuseRequestInHandler_ResetsHeadersForEachReuse

# src/libraries/System.Net.Http/tests/FunctionalTests/NtAuthTests.FakeServer.cs:118
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.NtAuthTests.DefaultHandler_FakeServer_Success

# src/libraries/System.Net.Http/tests/FunctionalTests/NtAuthTests.FakeServer.cs:144
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.NtAuthTests.DefaultHandler_FakeServer_DefaultCredentials

# src/libraries/System.Net.Http/tests/FunctionalTests/SocketsHttpHandlerTest.cs:388
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.SocketsHttpHandler_HttpClientHandler_Finalization_Http2_Test.AppContextSetData_SetDefaultMaxConnectionsPerServer

# src/libraries/System.Net.Http/tests/FunctionalTests/SocketsHttpHandlerTest.cs:770
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.SocketsHttpHandler_HttpClientHandler_SslProtocols_Test.Proxy_Https_Succeeds

# src/libraries/System.Net.Http/tests/FunctionalTests/SocketsHttpHandlerTest.cs:1961
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.SocketsHttpHandler_Connect_Test.MultipleIterativeRequests_SameConnectionReused

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientHandlerTest.Headers.cs:50
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.DerivedHttpHeaders.SendAsync_UserAgent_CorrectlyWritten

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientHandlerTest.Headers.cs:140
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.DerivedHttpHeaders.SendAsync_InvalidCharactersInHeader_Throw

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientHandlerTest.Headers.cs:390
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.DerivedHttpHeaders.SendAsync_GetWithInvalidHostHeader_ThrowsException

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientHandlerTest.Headers.cs:410
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.DerivedHttpHeaders.SendAsync_WithZeroLengthHeaderName_Throws

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientHandlerTest.Headers.cs:454
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.DerivedHttpHeaders.SendAsync_CustomRequestEncodingSelector_CanSendNonAsciiHeaderValues

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientHandlerTest.Headers.cs:509
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.DerivedHttpHeaders.SendAsync_CustomResponseEncodingSelector_CanReceiveNonAsciiHeaderValues

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientHandlerTest.Headers.cs:599
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.DerivedHttpHeaders.SendAsync_InvalidCharactersInResponseHeader_ReplacedWithSpaces

# src/libraries/System.Net.Http/tests/FunctionalTests/ResponseStreamZeroByteReadTests.cs:83
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.Http1ResponseStreamZeroByteReadTestBase.ZeroByteRead_IssuesZeroByteReadOnUnderlyingStream

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:297
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.GetContentAsync_WhenCannotConnect_ExceptionContainsHostInfo

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:767
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.CancelAllPending_AllPendingOperationsCanceled

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:785
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.Timeout_TooShort_AllPendingOperationsCanceled

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:822
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.Timeout_CallerCanceledTokenBeforeTimeout_TimeoutIsNotDetected

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:1017
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.Send_SingleThread_Loopback_Succeeds

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:1072
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.Send_CancelledRequestContent_Throws

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:1161
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.Send_CancelledResponseContent_Throws

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:1213
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.Send_TimeoutResponseContent_Throws

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:1272
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.SendAsync_CorrectVersionSelected_LoopbackServer

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:1322
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpClientTest.SendAsync_CorrectVersionSelected_ExternalServer

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpClientTest.cs:1638
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.CustomHttpClient.Send_NullRequest_ThrowsException

# src/libraries/System.Net.Http/tests/FunctionalTests/HttpContentTest.cs:301
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpContentTest.ReadAsStreamAsync_UseBaseImplementation_ContentGetsBufferedThenMemoryStreamReturned

# src/libraries/System.Net.Http/tests/FunctionalTests/MetricsTest.cs:864
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.CustomCredentials.RequestDuration_ConnectionError_LogsExpectedErrorReason

# src/libraries/System.Net.Http/tests/FunctionalTests/MetricsTest.cs:1092
./browser-tests/run-test-suite.sh "System.Net.Http.Functional.Tests" "src/libraries/System.Net.Http/tests/FunctionalTests/System.Net.Http.Functional.Tests.csproj" -m System.Net.Http.Functional.Tests.HttpMetricsTest_Http11.RequestDuration_ConnectionClosedWhileReceivingHeaders_Recorded

# Tests from src/libraries/System.Net.Mail/tests/Functional/System.Net.Mail.Functional.Tests.csproj
# src/libraries/System.Net.Mail/tests/Functional/MailMessageTest.cs:154
./browser-tests/run-test-suite.sh "System.Net.Mail.Functional.Tests" "src/libraries/System.Net.Mail/tests/Functional/System.Net.Mail.Functional.Tests.csproj" -m System.Net.Mail.Tests.MailMessageTest.SendMailMessageTest

# src/libraries/System.Net.Mail/tests/Functional/MailMessageTest.cs:226
./browser-tests/run-test-suite.sh "System.Net.Mail.Functional.Tests" "src/libraries/System.Net.Mail/tests/Functional/System.Net.Mail.Functional.Tests.csproj" -m System.Net.Mail.Tests.MailMessageTest.SentSpecialLengthMailAttachment_Base64Decode_Success

# Tests from src/libraries/System.Net.NetworkInformation/tests/FunctionalTests/System.Net.NetworkInformation.Functional.Tests.csproj
# src/libraries/System.Net.NetworkInformation/tests/FunctionalTests/NetworkInterfaceBasicTest.cs:280
./browser-tests/run-test-suite.sh "System.Net.NetworkInformation.Functional.Tests" "src/libraries/System.Net.NetworkInformation/tests/FunctionalTests/System.Net.NetworkInformation.Functional.Tests.csproj" -m System.Net.NetworkInformation.Tests.NetworkInterfaceBasicTest.NetworkInterface_LoopbackInterfaceIndex_MatchesReceivedPackets

# Tests from src/libraries/System.Net.Primitives/tests/FunctionalTests/System.Net.Primitives.Functional.Tests.csproj
# src/libraries/System.Net.Primitives/tests/FunctionalTests/SocketAddressTest.cs:122
./browser-tests/run-test-suite.sh "System.Net.Primitives.Functional.Tests" "src/libraries/System.Net.Primitives/tests/FunctionalTests/System.Net.Primitives.Functional.Tests.csproj" -m System.Net.Primitives.Functional.Tests.SocketAddressTest.ToString_UnsupportedFamily_Throws

# Tests from src/libraries/System.Net.WebSockets.Client/tests/wasm/System.Net.WebSockets.Client.Wasm.Tests.csproj
# src/libraries/System.Net.WebSockets.Client/tests/wasm/BrowserTimerThrottlingTest.cs:33
./browser-tests/run-test-suite.sh "System.Net.WebSockets.Client.Wasm.Tests" "src/libraries/System.Net.WebSockets.Client/tests/wasm/System.Net.WebSockets.Client.Wasm.Tests.csproj" -m System.Net.WebSockets.Client.Wasm.Tests.BrowserTimerThrottlingTest.DotnetTimersAreHeavilyThrottledWithoutWebSocket

# src/libraries/System.Net.WebSockets.Client/tests/wasm/BrowserTimerThrottlingTest.cs:82
./browser-tests/run-test-suite.sh "System.Net.WebSockets.Client.Wasm.Tests" "src/libraries/System.Net.WebSockets.Client/tests/wasm/System.Net.WebSockets.Client.Wasm.Tests.csproj" -m System.Net.WebSockets.Client.Wasm.Tests.BrowserTimerThrottlingTest.WebSocketKeepsDotnetTimersOnlyLightlyThrottled

# Tests from src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj
# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.RuntimeOnly.cs:788
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.XML_EnumerableCollection

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.RuntimeOnly.cs:2025
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m schema.above.SoapEncodedSerialization_SoapAttribute

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.RuntimeOnly.cs:2269
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m schema.above.Xml_Soap_WithNullables

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.RuntimeOnly.cs:2720
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m schema.above.XmlMembersMapping_TypeWithXmlAttributes

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.RuntimeOnly.cs:3453
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m schema.above.Xml_XmlTextAttributeTest

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.RuntimeOnly.cs:3516
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m schema.has.Xml_NookTypes

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:49
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_TypeWithDateTimePropertyAsXmlTime

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:496
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_BaseClassAndDerivedClassWithSameProperty

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:631
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_Struct

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:664
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_Nullables

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:691
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_DerivedClasses

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:931
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m does.Xml_TypeWithDefaultTimeSpanProperty

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:975
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m does.Xml_TypeWithDateTimeOffsetProperty

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:1099
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m does.Xml_TimeOnlyParseErrors

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:1147
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m does.Xml_TypeWithDateOnlyAndTimeOnly

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:1208
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m does.Xml_XsdDate_With_DateOnly_And_DateTime

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:1274
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m does.Xml_XsdTime_With_TimeOnly_And_DateTime

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:1460
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m does.Xml_BaseClassAndDerivedClass2WithSameProperty

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:1744
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m does.Xml_TypeWithTypesHavingCustomFormatter

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:2177
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m does.Xml_DeserializeHiddenMembersTest

# src/libraries/System.Private.Xml/tests/XmlSerializer/XmlSerializerTests.cs:2582
./browser-tests/run-test-suite.sh "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m does.Xml_TypeInCollectibleALC

# Tests from src/libraries/System.Runtime.InteropServices.JavaScript/tests/System.Runtime.InteropServices.JavaScript.UnitTests/System.Runtime.InteropServices.JavaScript.Tests.csproj
# src/libraries/System.Runtime.InteropServices.JavaScript/tests/System.Runtime.InteropServices.JavaScript.UnitTests/System/Runtime/InteropServices/JavaScript/SecondRuntimeTest.cs:14
./browser-tests/run-test-suite.sh "System.Runtime.InteropServices.JavaScript.Tests" "src/libraries/System.Runtime.InteropServices.JavaScript/tests/System.Runtime.InteropServices.JavaScript.UnitTests/System.Runtime.InteropServices.JavaScript.Tests.csproj" -m System.Runtime.InteropServices.JavaScript.Tests.SecondRuntimeTest.RunSecondRuntimeAndTestStaticState

# Tests from src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj
# src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/ComVariantMarshallerTests.cs:330
./browser-tests/run-test-suite.sh "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.ComExposedType.UnknownWrapper_Of_GeneratedComInterfaceType_Marshals_To_UNKNOWN

# src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/GetFunctionPointerForDelegateTests.cs:14
./browser-tests/run-test-suite.sh "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.GetFunctionPointerForDelegateTests.GetFunctionPointerForDelegate_NormalDelegateNonGeneric_ReturnsExpected

# src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/GetFunctionPointerForDelegateTests.cs:27
./browser-tests/run-test-suite.sh "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.GetFunctionPointerForDelegateTests.GetFunctionPointerForDelegate_MarshalledDelegateNonGeneric_ReturnsExpected

# src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/GetFunctionPointerForDelegateTests.cs:44
./browser-tests/run-test-suite.sh "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.GetFunctionPointerForDelegateTests.GetFunctionPointerForDelegate_NormalDelegateGeneric_ReturnsExpected

# src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/GetFunctionPointerForDelegateTests.cs:57
./browser-tests/run-test-suite.sh "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.GetFunctionPointerForDelegateTests.GetFunctionPointerForDelegate_MarshalledDelegateGeneric_ReturnsExpected

# src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/GetFunctionPointerForDelegateTests.cs:96
./browser-tests/run-test-suite.sh "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.GetFunctionPointerForDelegateTests.GetFunctionPointerForDelegate_MarshalledOpenStaticDelegate

# src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/GetFunctionPointerForDelegateTests.cs:106
./browser-tests/run-test-suite.sh "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.GetFunctionPointerForDelegateTests.GetFunctionPointerForDelegate_MarshalledClosedStaticDelegate

# src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/QueryInterfaceTests.cs:26
./browser-tests/run-test-suite.sh "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.QueryInterfaceTests.QueryInterface_ValidInterface_Success

# src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/QueryInterfaceTests.cs:61
./browser-tests/run-test-suite.sh "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.QueryInterfaceTests.QueryInterface_NoSuchInterface_Success

# src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/AddRefTests.cs:14
./browser-tests/run-test-suite.sh "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.AddRefTests.AddRef_ValidPointer_Success

# src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System/Runtime/InteropServices/Marshal/ReleaseTests.cs:14
./browser-tests/run-test-suite.sh "System.Runtime.InteropServices.Tests" "src/libraries/System.Runtime.InteropServices/tests/System.Runtime.InteropServices.UnitTests/System.Runtime.InteropServices.Tests.csproj" -m System.Runtime.InteropServices.Tests.ReleaseTests.Release_ValidPointer_Success

# Tests from src/libraries/System.Runtime/tests/System.Buffers.Tests/System.Buffers.Tests.csproj
# src/libraries/System.Runtime/tests/System.Buffers.Tests/ArrayPool/UnitTests.cs:85
./browser-tests/run-test-suite.sh "System.Buffers.Tests" "src/libraries/System.Runtime/tests/System.Buffers.Tests/System.Buffers.Tests.csproj" -m System.Buffers.ArrayPool.Tests.ArrayPoolUnitTests.RentingGiganticArraySucceedsOrOOMs

# Tests from src/libraries/System.Runtime/tests/System.Globalization.Calendars.Tests/System.Globalization.Calendars.Tests.csproj
# src/libraries/System.Runtime/tests/System.Globalization.Calendars.Tests/TaiwanCalendar/TaiwanCalendarDaysAndMonths.cs:12
./browser-tests/run-test-suite.sh "System.Globalization.Calendars.Tests" "src/libraries/System.Runtime/tests/System.Globalization.Calendars.Tests/System.Globalization.Calendars.Tests.csproj" -m System.Globalization.Tests.TaiwanCalendarDaysAndMonths.DayNames_MonthNames

# Tests from src/libraries/System.Runtime/tests/System.Globalization.Tests/System.Globalization.Tests.csproj
# src/libraries/System.Runtime/tests/System.Globalization.Tests/System/Globalization/TextInfoTests.cs:526
./browser-tests/run-test-suite.sh "System.Globalization.Tests" "src/libraries/System.Runtime/tests/System.Globalization.Tests/System.Globalization.Tests.csproj" -m System.Globalization.Tests.TextInfoMiscTests.TestAsciiCodePageWithCulturesWithAlternativeSortNames

# Tests from src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/System.IO.FileSystem.Tests.csproj
# src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/RandomAccess/Base.cs:54
./browser-tests/run-test-suite.sh "System.IO.FileSystem.Tests" "src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/System.IO.FileSystem.Tests.csproj" -m System.IO.Tests.RandomAccess_Base.ThrowsNotSupportedExceptionForUnseekableFile

# src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/RandomAccess/FlushToDisk.cs:87
./browser-tests/run-test-suite.sh "System.IO.FileSystem.Tests" "src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/System.IO.FileSystem.Tests.csproj" -m System.IO.Tests.RandomAccess_FlushToDisk.CanFlushUnseekableFile

# src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/File/GetSetTimes.cs:141
./browser-tests/run-test-suite.sh "System.IO.FileSystem.Tests" "src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/System.IO.FileSystem.Tests.csproj" -m System.IO.Tests.File_GetSetTimes.SetLastWriteTimeTicks

# src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/File/GetSetTimes.cs:188
./browser-tests/run-test-suite.sh "System.IO.FileSystem.Tests" "src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/System.IO.FileSystem.Tests.csproj" -m System.IO.Tests.File_GetSetTimes.SetLastAccessTimeTicks

# src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/File/Create.cs:184
./browser-tests/run-test-suite.sh "System.IO.FileSystem.Tests" "src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/System.IO.FileSystem.Tests.csproj" -m System.IO.Tests.File_Create_str.LongPathSegment

# src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/Directory/CreateDirectory.cs:218
./browser-tests/run-test-suite.sh "System.IO.FileSystem.Tests" "src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/System.IO.FileSystem.Tests.csproj" -m System.IO.Tests.Directory_CreateDirectory.DirectoryWithComponentLongerThanMaxComponentAsPath_ThrowsException

# src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/FileStream/Flush.cs:181
./browser-tests/run-test-suite.sh "System.IO.FileSystem.Tests" "src/libraries/System.Runtime/tests/System.IO.FileSystem.Tests/System.IO.FileSystem.Tests.csproj" -m System.IO.Tests.FileStream_Flush.FlushCanBeUsedOnPipes_Success

# Tests from src/libraries/System.Runtime/tests/System.IO.Tests/System.IO.Tests.csproj
# src/libraries/System.Runtime/tests/System.IO.Tests/BufferedStream/BufferedStreamTests.cs:352
./browser-tests/run-test-suite.sh "System.IO.Tests" "src/libraries/System.Runtime/tests/System.IO.Tests/System.IO.Tests.csproj" -m System.IO.Tests.BufferedStream_StreamAsync.NoInt32OverflowInTheBufferingLogic

# src/libraries/System.Runtime/tests/System.IO.Tests/StreamReader/StreamReaderTests_Serial.cs:22
./browser-tests/run-test-suite.sh "System.IO.Tests" "src/libraries/System.Runtime/tests/System.IO.Tests/System.IO.Tests.csproj" -m System.IO.Tests.StreamReaderTests_Serial.ReadToEndAsync_WithCancellation

# src/libraries/System.Runtime/tests/System.IO.Tests/StreamReader/StreamReaderTests.cs:584
./browser-tests/run-test-suite.sh "System.IO.Tests" "src/libraries/System.Runtime/tests/System.IO.Tests/System.IO.Tests.csproj" -m System.IO.Tests.StreamReaderTests.ReadAsync_Canceled_ThrowsException

# Tests from src/libraries/System.Runtime/tests/System.IO.UnmanagedMemoryStream.Tests/System.IO.UnmanagedMemoryStream.Tests.csproj
# src/libraries/System.Runtime/tests/System.IO.UnmanagedMemoryStream.Tests/Uma.ReadWriteStructArray.cs:118
./browser-tests/run-test-suite.sh "System.IO.UnmanagedMemoryStream.Tests" "src/libraries/System.Runtime/tests/System.IO.UnmanagedMemoryStream.Tests/System.IO.UnmanagedMemoryStream.Tests.csproj" -m System.IO.Tests.Uma_ReadWriteStructArray.UmaReadWriteGenericStringStructArray_ThrowsArgumentException

# Tests from src/libraries/System.Runtime/tests/System.Reflection.Tests/System.Reflection.Tests.csproj
# src/libraries/System.Runtime/tests/System.Reflection.Tests/AssemblyTests.cs:328
./browser-tests/run-test-suite.sh "System.Reflection.Tests" "src/libraries/System.Runtime/tests/System.Reflection.Tests/System.Reflection.Tests.csproj" -m System.Reflection.Tests.AssemblyTests.GetType_DefaultsToItself

# src/libraries/System.Runtime/tests/System.Reflection.Tests/AssemblyTests.cs:571
./browser-tests/run-test-suite.sh "System.Reflection.Tests" "src/libraries/System.Runtime/tests/System.Reflection.Tests/System.Reflection.Tests.csproj" -m System.Reflection.Tests.AssemblyTests.CodeBase

# src/libraries/System.Runtime/tests/System.Reflection.Tests/AssemblyTests.cs:728
./browser-tests/run-test-suite.sh "System.Reflection.Tests" "src/libraries/System.Runtime/tests/System.Reflection.Tests/System.Reflection.Tests.csproj" -m System.Reflection.Tests.AssemblyTests.GetCallingAssembly

# src/libraries/System.Runtime/tests/System.Reflection.Tests/AssemblyTests.cs:737
./browser-tests/run-test-suite.sh "System.Reflection.Tests" "src/libraries/System.Runtime/tests/System.Reflection.Tests/System.Reflection.Tests.csproj" -m System.Reflection.Tests.AssemblyTests.GetCallingAssemblyInCctor

# src/libraries/System.Runtime/tests/System.Reflection.Tests/AssemblyNameTests.cs:307
./browser-tests/run-test-suite.sh "System.Reflection.Tests" "src/libraries/System.Runtime/tests/System.Reflection.Tests/System.Reflection.Tests.csproj" -m System.Reflection.Tests.AssemblyNameTests.GetAssemblyName_LockedFile

# Tests from src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System.Runtime.Extensions.Tests.csproj
# src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System/EnvironmentTests.cs:362
./browser-tests/run-test-suite.sh "System.Runtime.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System.Runtime.Extensions.Tests.csproj" -m System.Tests.EnvironmentTests.GetFolderPath_Unix_SpecialFolderDoesNotExist_CreatesSuccessfully

# src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System/Environment.StackTrace.cs:71
./browser-tests/run-test-suite.sh "System.Runtime.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System.Runtime.Extensions.Tests.csproj" -m System.Tests.TestClass.StackTraceDoesNotStartWithInternalFrame

# src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System/AppDomainTests.cs:49
./browser-tests/run-test-suite.sh "System.Runtime.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System.Runtime.Extensions.Tests.csproj" -m System.Tests.AppDomainTests.TargetFrameworkTest

# src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System/AppDomainTests.cs:370
./browser-tests/run-test-suite.sh "System.Runtime.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System.Runtime.Extensions.Tests.csproj" -m System.Tests.FirstChanceTestException.LoadBytes

# src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System/AppDomainTests.cs:385
./browser-tests/run-test-suite.sh "System.Runtime.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System.Runtime.Extensions.Tests.csproj" -m System.Tests.FirstChanceTestException.MonitoringIsEnabled

# src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System/Reflection/AssemblyNameProxyTests.cs:16
./browser-tests/run-test-suite.sh "System.Runtime.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System.Runtime.Extensions.Tests.csproj" -m System.Reflection.Tests.AssemblyNameProxyTests.GetAssemblyName_AssemblyNameProxy

# Tests from src/libraries/System.Runtime/tests/System.Runtime.InteropServices.RuntimeInformation.Tests/System.Runtime.InteropServices.RuntimeInformation.Tests.csproj
# src/libraries/System.Runtime/tests/System.Runtime.InteropServices.RuntimeInformation.Tests/DescriptionNameTests.cs:20
./browser-tests/run-test-suite.sh "System.Runtime.InteropServices.RuntimeInformation.Tests" "src/libraries/System.Runtime/tests/System.Runtime.InteropServices.RuntimeInformation.Tests/System.Runtime.InteropServices.RuntimeInformation.Tests.csproj" -m System.Runtime.InteropServices.RuntimeInformationTests.DescriptionNameTests.DumpRuntimeInformationToConsole

# src/libraries/System.Runtime/tests/System.Runtime.InteropServices.RuntimeInformation.Tests/DescriptionNameTests.cs:174
./browser-tests/run-test-suite.sh "System.Runtime.InteropServices.RuntimeInformation.Tests" "src/libraries/System.Runtime/tests/System.Runtime.InteropServices.RuntimeInformation.Tests/System.Runtime.InteropServices.RuntimeInformation.Tests.csproj" -m System.Runtime.InteropServices.RuntimeInformationTests.DescriptionNameTests.DumpRuntimeInformationToConsoleOuter

# Tests from src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj
# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DoubleTests.GenericMath.cs:349
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DoubleTests_GenericMath.ConvertToIntegerTest

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DoubleTests.GenericMath.cs:402
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DoubleTests_GenericMath.ConvertToIntegerNativeTest

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:318
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.B.DynamicInvoke_DefaultParameter_ValueTypeParameterWithExplicitValue

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:327
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.B.DynamicInvoke_DefaultParameter_DateTimeParameterWithMissingValue

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:336
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.B.DynamicInvoke_DateTimeAndCustomConstantAttribute_DateTimeParameterWithMissingValue

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:345
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.B.DynamicInvoke_CustomConstantAndDateTimeAttribute_DateTimeParameterWithMissingValue

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:354
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.B.DynamicInvoke_CustomConstantAttribute_DateTimeParameterWithMissingValue

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:363
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.B.DynamicInvoke_DefaultParameter_DateTimeParameterWithExplicitValue

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:372
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.B.DynamicInvoke_DefaultParameter_DecimalParameterWithAttributeAndMissingValue

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:381
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.B.DynamicInvoke_DecimalAndCustomConstantAttribute_DecimalParameterWithAttributeAndMissingValue

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:390
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.B.DynamicInvoke_CustomConstantAndDecimalAttribute_DecimalParameterWithAttributeAndMissingValue

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:399
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.B.DynamicInvoke_CustomConstantAttribute_DecimalParameterWithAttributeAndMissingValue

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:408
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.B.DynamicInvoke_DefaultParameter_DecimalParameterWithAttributeAndExplicitValue

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:417
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.B.DynamicInvoke_DefaultParameter_DecimalParameterWithMissingValue

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:426
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.B.DynamicInvoke_DefaultParameter_DecimalParameterWithExplicitValue

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DelegateTests.cs:441
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.B.DynamicInvoke_DefaultParameter_NullableIntWithExplicitValue

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/HalfTests.GenericMath.cs:2457
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.HalfTests_GenericMath.ParseValidStringTest

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/HalfTests.GenericMath.cs:2532
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.HalfTests_GenericMath.ParseValidSpanTest

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/SingleTests.GenericMath.cs:349
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.SingleTests_GenericMath.ConvertToIntegerTest

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/SingleTests.GenericMath.cs:402
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.SingleTests_GenericMath.ConvertToIntegerNativeTest

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DateTimeTests.cs:1280
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DateTimeTests.DateTimeParsingWithBiDiCultureTest

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DateTimeTests.cs:2725
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.Program.GetObjectData_Invoke_ReturnsExpected

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/ActivatorTests.Generic.cs:52
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.ActivatorTests.CreateInstanceT_StructWithPrivateDefaultConstructor_ThrowsMissingMethodException

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:138
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Ctor_IntArray

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:146
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Ctor_IntSpan

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:252
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Ctor_Int_Int_Int_Bool_Byte

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:336
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Add_Overflows_ThrowsOverflowException

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:1124
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Remainder

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:1206
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Round_Digits_ReturnsExpected

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:1240
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Round_DigitsMode_ReturnsExpected

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:1311
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Subtract

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:1330
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Subtract_Invalid

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DecimalTests.cs:1717
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Test

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/ActivatorTests.cs:785
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.Flag.TestingCreateInstanceObjectHandle

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/ActivatorTests.cs:864
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.Flag.TestingCreateInstanceObjectHandleFullSignature

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/GCTests.cs:84
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.GCTests.Collect_CallsFinalizer

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/GCTests.cs:142
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.ObjectWithExpensiveFinalizer.KeepAlive

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/GCTests.cs:193
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DoNotKeepAliveObject.KeepAlive_Null

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/GCTests.cs:355
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.TestObjectWithFinalizer.ReRegisterForFinalize

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/DoubleTests.cs:390
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DoubleTests.ParsePatterns

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/TimeZoneInfoTests.cs:2491
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.TimeZoneInfoTests.UsingAlternativeTimeZoneIdsTest

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/StringTests.cs:325
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.StringTests.Contains_Rune_StringComparison

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/StringTests.cs:1239
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.StringTests.GetHashCode_NoSuchStringComparison_ThrowsArgumentException

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/UInt128Tests.cs:52
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.UInt128Tests.CompareTo_Other_ReturnsExpected

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/UInt128Tests.cs:257
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.UInt128Tests.Parse_Valid

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/UInt128Tests.cs:392
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.UInt128Tests.Parse_Span_Valid

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/UInt128Tests.cs:434
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.UInt128Tests.Parse_Utf8Span_Valid

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/ExceptionTests.cs:95
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.ExceptionTests.Exception_TargetSite_OtherMethod

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/ExceptionTests.cs:103
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.ExceptionTests.Exception_TargetSite_Rethrow

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Int128Tests.cs:61
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.Int128Tests.CompareTo_Other_ReturnsExpected

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Int128Tests.cs:328
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.Int128Tests.Parse_Valid

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Int128Tests.cs:450
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.Int128Tests.Parse_Span_Valid

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Int128Tests.cs:492
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.Int128Tests.Parse_Utf8Span_Valid

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/HalfTests.cs:558
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.HalfTests.ExplicitConversion_FromSingle

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/HalfTests.cs:897
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.HalfTests.Parse_Utf8Span_Valid

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/ArgIteratorTests.cs:12
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.ArgIteratorTests.ArgIterator_GetRemainingCount_GetNextArg

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Runtime/JitInfoTests.cs:119
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Runtime.Tests.JitInfoTests.JitInfoCurrentThreadIsPopulated

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Threading/PeriodicTimerTests.cs:68
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Threading.Tests.PeriodicTimerTests.Dispose_Idempotent

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Threading/PeriodicTimerTests.cs:122
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Threading.Tests.PeriodicTimerTests.WaitForNextTickAsync_ConcurrentDisposeAfterTicks_EventuallyReturnsFalse

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Threading/PeriodicTimerTests.cs:142
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Threading.Tests.PeriodicTimerTests.PeriodicTimer_NoActiveOperations_TimerNotRooted

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Threading/PeriodicTimerTests.cs:155
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Threading.Tests.PeriodicTimerTests.PeriodicTimer_ActiveOperations_TimerRooted

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Text/EncodingTests.cs:34
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Text.Tests.EncodingTests.GetEncoding_FromProvider_ByCodePage_WithDisallowedEncoding_Throws

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Text/EncodingTests.cs:65
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Text.Tests.EncodingTests.GetEncoding_FromProvider_ByEncodingName_WithDisallowedEncoding_Throws

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Text/EncodingTests.cs:95
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Text.Tests.EncodingTests.GetEncodings_FromProvider_DoesNotContainDisallowedEncodings

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Text/CompositeFormatTests.cs:44
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Text.Tests.CompositeFormatTests.DebuggerDisplay_ShowsFormat

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Reflection/ModuleTests.cs:84
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.ModuleTests.FullyQualifiedName

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Reflection/ModuleTests.cs:103
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.ModuleTests.Name

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Reflection/ModuleTests.cs:212
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.ModuleTests.GetMethod_AmbiguousMatch

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Reflection/ModuleTests.cs:221
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.ModuleTests.GetMethod

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Reflection/ModuleTests.cs:238
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.ModuleTests.GetMethods

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Reflection/InvokeWithRefLikeArgs.cs:40
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.InvokeWithRefLikeArgs.MethodTakesRefToRefStructAsArg_ThrowsNSE

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Reflection/InvokeWithRefLikeArgs.cs:56
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.InvokeWithRefLikeArgs.MethodTakesOutToRefStructAsArg_ThrowsNSE

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Type/TypeTests.cs:566
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.TypeTests.GetTypeByName_InvokeViaReflection_Success

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Numerics/TotalOrderIeee754ComparerTests.cs:140
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Runtime.Tests.TotalOrderIeee754ComparerTests.TotalOrderTestInvalidSignificand

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Runtime/CompilerServices/RuntimeFeatureTests.cs:35
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Runtime.CompilerServices.Tests.RuntimeFeatureTests.DynamicCode_Jit

# src/libraries/System.Runtime/tests/System.Runtime.Tests/System/Runtime/ExceptionServices/ExceptionDispatchInfoTests.cs:56
./browser-tests/run-test-suite.sh "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Runtime.ExceptionServices.Tests.ExceptionDispatchInfoTests.SetCurrentStackTrace_IncludedInExceptionStackTrace

# Tests from src/libraries/System.Runtime/tests/System.Threading.Tasks.Extensions.Tests/System.Threading.Tasks.Extensions.Tests.csproj
# src/libraries/System.Runtime/tests/System.Threading.Tasks.Extensions.Tests/ValueTaskTests.cs:1170
./browser-tests/run-test-suite.sh "System.Threading.Tasks.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Extensions.Tests/System.Threading.Tasks.Extensions.Tests.csproj" -m System.Threading.Tasks.Tests.ValueTaskTests.NonGeneric_AsyncMethodBuilderAttribute_ValueTaskAttributed

# src/libraries/System.Runtime/tests/System.Threading.Tasks.Extensions.Tests/ValueTaskTests.cs:1183
./browser-tests/run-test-suite.sh "System.Threading.Tasks.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Extensions.Tests/System.Threading.Tasks.Extensions.Tests.csproj" -m System.Threading.Tasks.Tests.ValueTaskTests.Generic_AsyncMethodBuilderAttribute_ValueTaskAttributed

# Tests from src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj
# src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/MethodCoverage.cs:298
./browser-tests/run-test-suite.sh "System.Threading.Tasks.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj" -m TaskCoverage.Coverage.CancellationTokenRegitration

# src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/MethodCoverage.cs:316
./browser-tests/run-test-suite.sh "System.Threading.Tasks.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj" -m TaskCoverage.Coverage.TaskAwaiter

# src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/Task/TaskContinueWithTests.cs:1079
./browser-tests/run-test-suite.sh "System.Threading.Tasks.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj" -m System.Threading.Tasks.Tests.TaskContinueWithTests.TestNoDeadlockOnContinueWith

# src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/Task/TaskContinueWithTests.cs:1227
./browser-tests/run-test-suite.sh "System.Threading.Tasks.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj" -m System.Threading.Tasks.Tests.TaskContinueWithTests.LongContinuationChain_ContinueWith_DoesNotStackOverflow

# src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/Task/TaskContinueWithTests.cs:1259
./browser-tests/run-test-suite.sh "System.Threading.Tasks.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj" -m System.Threading.Tasks.Tests.TaskContinueWithTests.LongContinuationChain_Await_DoesNotStackOverflow

# src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/Task/AsyncEnumerableToBlockingEnumerableTests.cs:63
./browser-tests/run-test-suite.sh "System.Threading.Tasks.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj" -m System.Threading.Tasks.Tests.AsyncEnumerableToBlockingEnumerableTests.AsyncEnumerableWithDelays

# src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/Task/AsyncEnumerableToBlockingEnumerableTests.cs:98
./browser-tests/run-test-suite.sh "System.Threading.Tasks.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj" -m System.Threading.Tasks.Tests.AsyncEnumerableToBlockingEnumerableTests.AsyncEnumerableWithException

# src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/Task/AsyncEnumerableToBlockingEnumerableTests.cs:127
./browser-tests/run-test-suite.sh "System.Threading.Tasks.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Tests/System.Threading.Tasks.Tests.csproj" -m System.Threading.Tasks.Tests.AsyncEnumerableToBlockingEnumerableTests.AsyncEnumerableWithCancellation

# Tests from src/libraries/System.Runtime/tests/System.Threading.Timer.Tests/System.Threading.Timer.Tests.csproj
# src/libraries/System.Runtime/tests/System.Threading.Timer.Tests/TimerFiringTests.cs:287
./browser-tests/run-test-suite.sh "System.Threading.Timer.Tests" "src/libraries/System.Runtime/tests/System.Threading.Timer.Tests/System.Threading.Timer.Tests.csproj" -m System.Threading.Tests.TimerFiringTests.Timer_ManyDifferentSerialSingleDueTimes_AllFireWithinAllowedRange

# Tests from src/libraries/System.Text.RegularExpressions/tests/FunctionalTests/System.Text.RegularExpressions.Tests.csproj
# src/libraries/System.Text.RegularExpressions/tests/FunctionalTests/RegexIgnoreCaseTests.cs:132
./browser-tests/run-test-suite.sh "System.Text.RegularExpressions.Tests" "src/libraries/System.Text.RegularExpressions/tests/FunctionalTests/System.Text.RegularExpressions.Tests.csproj" -m System.Text.RegularExpressions.Tests.RegexIgnoreCaseTests.SourceGenerator_Supports_All_Cultures

# src/libraries/System.Text.RegularExpressions/tests/FunctionalTests/Regex.KnownPattern.Tests.cs:1554
./browser-tests/run-test-suite.sh "System.Text.RegularExpressions.Tests" "src/libraries/System.Text.RegularExpressions/tests/FunctionalTests/System.Text.RegularExpressions.Tests.csproj" -m System.Text.RegularExpressions.Tests.DataSetExpression.PatternsDataSet_ConstructRegexForAll_SourceGenerated

#################################
