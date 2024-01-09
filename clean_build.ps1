if (Test-Path -Path ".\build" -PathType Container) {
    # 如果 build 文件夹存在，则删除其中所有文件
    Remove-Item -Path ".\build" -Force -Recurse
    Write-Host "[powershell] build folder cleaned."
}
