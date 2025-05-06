
Get-ADUser -Filter * | select name,surname,givenname | Out-GridView -OutputMode Multiple
Get-ADUser -Filter * | select name,surname,givenname | Out-GridView -OutputMode Single
