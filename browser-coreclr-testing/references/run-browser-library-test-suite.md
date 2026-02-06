./dotnet.cmd build /p:TargetOS=browser /p:TargetArchitecture=wasm /p:RuntimeFlavor=CoreCLR /p:Configuration=Debug /p:Scenario=WasmTestOnChrome /p:InstallChromeForTests /t:Test src\libraries\System.Collections\tests\System.Collections.Tests.csproj


./dotnet.cmd build /p:TargetOS=browser /p:TargetArchitecture=wasm /p:RuntimeFlavor=CoreCLR /p:Configuration=Debug /p:Scenario=WasmTestOnChrome /p:InstallChromeForTests /t:Test src\libraries\System.Collections.Immutable\tests\System.Collections.Immutable.Tests.csproj
./dotnet.cmd build /p:TargetOS=browser /p:TargetArchitecture=wasm /p:RuntimeFlavor=CoreCLR /p:Configuration=Debug /p:Scenario=WasmTestOnChrome /p:InstallChromeForTests /t:Test src\libraries\System.ComponentModel.EventBasedAsync\tests\System.ComponentModel.EventBasedAsync.Tests.csproj