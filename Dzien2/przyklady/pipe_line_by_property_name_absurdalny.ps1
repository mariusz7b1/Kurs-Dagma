# absurdalny przyklad pipeline by property name
New-ADUser notepad
Start-Process notepad

#Get-ADUser -Filter {name -like "note*"} 
#get-help Stop-Process -ShowWindow

Get-ADUser -Filter {name -like "note*"}| Select-Object name | Stop-Process



