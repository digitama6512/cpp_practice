if (Test-Path -Path ".\build" -PathType Container) {
    # 如果 build 文件夹存在，则删除其中所有文件
    Get-ChildItem -Path ".\build" | Remove-Item -Force -Recurse
    Write-Host "[powershell] build folder cleaned."
}
else {
    # 如果 build 文件夹不存在，则创建它
    New-Item -Path ".\build" -ItemType Directory
    Write-Host "[powershell] build folder created."
}

# cmake configure命令
cmake.exe `
-DCMAKE_BUILD_TYPE:STRING=Debug `
-DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE `
-S. `
-B.\build `
-G "MinGW Makefiles"
