"1","4324", "21312", "ala ma kota"| ForEach-Object  {Write-Host $_.length}


for($i=1;$i -lt 5;$i++) {notepad}  # cel uruchoimine notatnika


Get-Process -Name no*
# zmień id procesu tak aby ni ebyły wszystkie
Get-Process | Where-Object {$_.name -like "no*" -and $_.id -lt 3800} 
Get-Process | Where-Object {$_.name -like "no*" -and $_.id -lt 3800} | ForEach-Object {$_.Kill()}
#Get-Process | Where-Object {$_.name -like "no*" -and $_.id -lt 3800} | Stop-Process

Get-Process -Name no*