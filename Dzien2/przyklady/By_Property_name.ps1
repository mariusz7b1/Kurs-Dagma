#By value

Get-Service -Name BITS | start-Service
Get-Service -Name BITS | Stop-Service

Get-Service | Get-Member

Get-Help Stop-Service -ShowWindow


# By propert name

Get-ADComputer DC1 | Get-Process
Get-ADComputer DC1 | Get-Member
Get-Help Get-Process -ShowWindow
Get-ADComputer DC1 | Select-Object @{n = 'ComputerName'; e = { $_.Name } } | Get-Process



# Using parenthetical commands
New-ADGroup "Opole Users" -GroupScope global
Get-ADGroup "Opole Users" | Add-ADGroupMember
Get-ADGroup "Opole Users" | Add-ADGroupMember -Members (Get-ADUser -Filter { City -eq 'Opole' })
Get-ADGroupMember "Opole Users"


