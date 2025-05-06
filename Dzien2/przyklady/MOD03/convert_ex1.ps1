Get-ADUser -Filter {name -like "a*"}  | ConvertTo-Csv | Out-file e:\adinfo.txt 
"`n`n" | Out-File E:\adinfo.txt -Append
Get-ADComputer -Filter  * | ConvertTo-Csv | Out-file e:\adinfo.txt  -Append
