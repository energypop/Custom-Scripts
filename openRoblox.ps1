$RobloxPath = "C:\Users\jinx\AppData\Local\Roblox\Versions\version-b71c150c7c1f40de\RobloxPlayerBeta.exe"

$LogFilePath = "C:\Users\jinx\Documents\crashlog.txt"

try {
    Write-Output "Launching Roblox..." | Tee-Object -FilePath $LogFilePath -Append
    $Process = Start-Process -FilePath $RobloxPath -PassThru -NoNewWindow

    Wait-Process -Id $Process.Id
    
    Write-Output "Roblox exited normally at $(Get-Date)" | Tee-Object -FilePath $LogFilePath -Append
} catch {
    Write-Output "Error occurred: $_ at $(Get-Date)" | Tee-Object -FilePath $LogFilePath -Append
}
