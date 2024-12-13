if (Get-Module -ListAvailable -Name PSWindowsUpdate) {
    Write-Host "Module PSWindowsUpdate has been detected"
} else {
    Write-Host "Installing required module"
    Install-Module PSWindowsUpdate   
}

Write-Host "Checking updates available..."
$updatesAvailable = Get-WUList -MicrosoftUpdate
Write-Host "Updates available: $updatesAvailable. If you accept to install updates, the computer will autoreboot. Save your work"
$installUpdates = Read-Host "Type Y to install updates or N to close the script"

if ($installUpdates.ToLower() == "y") {
    Install-WindowsUpdate -MicrosoftUpdate -AcceptAll
} else {
    Exit-PSSession
}

