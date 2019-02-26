csc /w:4 gen_build.cs
.\gen_build.exe

cd mt

cd SQLitePCLRaw.core
call .\gen.bat
dotnet build -c Release
cd ..

cd SQLitePCLRaw.ugly
dotnet build -c Release
cd ..

cd SQLitePCLRaw.lib.e_sqlite3.android
..\..\nuget restore SQLitePCLRaw.lib.e_sqlite3.android.csproj
msbuild /p:Configuration=Release
cd ..

cd SQLitePCLRaw.lib.e_sqlcipher.android
..\..\nuget restore SQLitePCLRaw.lib.e_sqlcipher.android.csproj
msbuild /p:Configuration=Release
cd ..

cd SQLitePCLRaw.lib.e_sqlite3.ios
..\..\nuget restore SQLitePCLRaw.lib.e_sqlite3.ios.csproj
msbuild /p:Configuration=Release
cd ..

cd SQLitePCLRaw.lib.e_sqlcipher.ios
..\..\nuget restore SQLitePCLRaw.lib.e_sqlcipher.ios.csproj
msbuild /p:Configuration=Release
cd ..

cd ..

cd bld
call .\pack.bat

