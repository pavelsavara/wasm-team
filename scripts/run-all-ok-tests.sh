#!/bin/bash
# Auto-generated script to re-run passed tests
# Each line runs a single passed test method
#
# Usage: Run from the root of a runtime repository (runtime or runtime2)
#   bash ../wasm-team/scripts/run-all-ok-tests.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

"$SCRIPT_DIR/run-test-suite.sh" "Microsoft.Extensions.Options.Tests" "src/libraries/Microsoft.Extensions.Options/tests/Microsoft.Extensions.Options.Tests/Microsoft.Extensions.Options.Tests.csproj" -m Microsoft.Extensions.Options.Tests.OptionsTest.Configure_GetsNullableOptionsFromConfiguration
"$SCRIPT_DIR/run-test-suite.sh" "System.Xml.XmlSerializer.ReflectionOnly.Tests" "src/libraries/System.Private.Xml/tests/XmlSerializer/ReflectionOnly/System.Xml.XmlSerializer.ReflectionOnly.Tests.csproj" -m XmlSerializerTests.Xml_TimeOnlyParseErrors
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.InteropServices.JavaScript.Tests" "src/libraries/System.Runtime.InteropServices.JavaScript/tests/System.Runtime.InteropServices.JavaScript.UnitTests/System.Runtime.InteropServices.JavaScript.Tests.csproj" -m System.Runtime.InteropServices.JavaScript.Tests.SecondRuntimeTest.RunSecondRuntimeAndTestStaticState
"$SCRIPT_DIR/run-test-suite.sh" "System.Buffers.Tests" "src/libraries/System.Runtime/tests/System.Buffers.Tests/System.Buffers.Tests.csproj" -m System.Buffers.ArrayPool.Tests.ArrayPoolUnitTests.RentingGiganticArraySucceedsOrOOMs
"$SCRIPT_DIR/run-test-suite.sh" "System.Globalization.Calendars.Tests" "src/libraries/System.Runtime/tests/System.Globalization.Calendars.Tests/System.Globalization.Calendars.Tests.csproj" -m System.Globalization.Tests.TaiwanCalendarDaysAndMonths.DayNames_MonthNames
"$SCRIPT_DIR/run-test-suite.sh" "System.Globalization.Tests" "src/libraries/System.Runtime/tests/System.Globalization.Tests/System.Globalization.Tests.csproj" -m System.Globalization.Tests.TextInfoMiscTests.TestAsciiCodePageWithCulturesWithAlternativeSortNames
"$SCRIPT_DIR/run-test-suite.sh" "System.IO.UnmanagedMemoryStream.Tests" "src/libraries/System.Runtime/tests/System.IO.UnmanagedMemoryStream.Tests/System.IO.UnmanagedMemoryStream.Tests.csproj" -m System.IO.Tests.Uma_ReadWriteStructArray.UmaReadWriteGenericStringStructArray_ThrowsArgumentException
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System.Runtime.Extensions.Tests.csproj" -m System.Tests.EnvironmentStackTrace.StackTraceDoesNotStartWithInternalFrame
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Extensions.Tests/System.Runtime.Extensions.Tests.csproj" -m System.Reflection.Tests.AssemblyNameProxyTests.GetAssemblyName_AssemblyNameProxy
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.InteropServices.RuntimeInformation.Tests" "src/libraries/System.Runtime/tests/System.Runtime.InteropServices.RuntimeInformation.Tests/System.Runtime.InteropServices.RuntimeInformation.Tests.csproj" -m System.Runtime.InteropServices.RuntimeInformationTests.DescriptionNameTests.DumpRuntimeInformationToConsole
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DoubleTests_GenericMath.ConvertToIntegerNativeTest
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.HalfTests_GenericMath.ParseValidStringTest
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.HalfTests_GenericMath.ParseValidSpanTest
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.SingleTests_GenericMath.ConvertToIntegerNativeTest
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DateTimeTests.DateTimeParsingWithBiDiCultureTest
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.ActivatorTests.CreateInstanceT_StructWithPrivateDefaultConstructor_ThrowsMissingMethodException
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Ctor_IntArray
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Ctor_IntSpan
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Ctor_Int_Int_Int_Bool_Byte
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Add_Overflows_ThrowsOverflowException
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Remainder
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Round_Digits_ReturnsExpected
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Round_DigitsMode_ReturnsExpected
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Subtract
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DecimalTests.Subtract_Invalid
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.ActivatorTests.TestingCreateInstanceObjectHandle
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.ActivatorTests.TestingCreateInstanceObjectHandleFullSignature
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.DoubleTests.ParsePatterns
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.StringTests.Contains_Rune_StringComparison
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.StringTests.GetHashCode_NoSuchStringComparison_ThrowsArgumentException
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.UInt128Tests.CompareTo_Other_ReturnsExpected
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.UInt128Tests.Parse_Valid
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.UInt128Tests.Parse_Span_Valid
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.UInt128Tests.Parse_Utf8Span_Valid
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.ExceptionTests.Exception_TargetSite_OtherMethod
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.ExceptionTests.Exception_TargetSite_Rethrow
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.Int128Tests.CompareTo_Other_ReturnsExpected
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.Int128Tests.Parse_Valid
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.Int128Tests.Parse_Span_Valid
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.Int128Tests.Parse_Utf8Span_Valid
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.HalfTests.ExplicitConversion_FromSingle
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.HalfTests.Parse_Utf8Span_Valid
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Text.Tests.CompositeFormatTests.DebuggerDisplay_ShowsFormat
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.ModuleTests.GetMethod_AmbiguousMatch
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.ModuleTests.GetMethod
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.ModuleTests.GetMethods
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Reflection.Tests.InvokeWithRefLikeArgs.MethodTakesOutToRefStructAsArg_ThrowsNSE
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Tests.TypeTests.GetTypeByName_InvokeViaReflection_Success
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Runtime.Tests.TotalOrderIeee754ComparerTests.TotalOrderTestInvalidSignificand
"$SCRIPT_DIR/run-test-suite.sh" "System.Runtime.Tests" "src/libraries/System.Runtime/tests/System.Runtime.Tests/System.Runtime.Tests.csproj" -m System.Runtime.ExceptionServices.Tests.ExceptionDispatchInfoTests.SetCurrentStackTrace_IncludedInExceptionStackTrace
"$SCRIPT_DIR/run-test-suite.sh" "System.Threading.Tasks.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Extensions.Tests/System.Threading.Tasks.Extensions.Tests.csproj" -m System.Threading.Tasks.Tests.ValueTaskTests.NonGeneric_AsyncMethodBuilderAttribute_ValueTaskAttributed
"$SCRIPT_DIR/run-test-suite.sh" "System.Threading.Tasks.Extensions.Tests" "src/libraries/System.Runtime/tests/System.Threading.Tasks.Extensions.Tests/System.Threading.Tasks.Extensions.Tests.csproj" -m System.Threading.Tasks.Tests.ValueTaskTests.Generic_AsyncMethodBuilderAttribute_ValueTaskAttributed
