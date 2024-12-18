$path =  "C:\Users\gubbl\Documents\computerInfo.csv"

Get-ComputerInfo | Export-Csv -Path $path -NoTypeInformation 

Write-Host "Your computer information has been stored on $path. Opening file"

Invoke-Item $path