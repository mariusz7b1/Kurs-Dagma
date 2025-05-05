Get-ADDomain
Get-ADForest
Get-ADOrganizationalUnit -Filter * | FT

Get-AdUser -Filter * -SearchBase "OU=Managers,DC=Adatum,DC=com"
Get-ADUser -Identity preston 

Get-ADUser preston -Properties *

Get-ADUser -Filter *  | select DistinguishedName, name

Get-ADUser -Filter 'name -like "a*"' 
Get-ADUser -Filter {name -like "a*"} 




