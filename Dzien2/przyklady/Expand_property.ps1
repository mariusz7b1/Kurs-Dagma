# Expanding property
# Cel pobranie ze wszytkich komputerów domeny serwisów

Get-ADComputer -filter { name -like "svr1*" } | FT


Get-Service -ComputerName (Get-ADComputer -filter { name -like "svr1*" })

Get-ADComputer -Filter { name -like "svr1*" } | Get-Member

Help Get-Service -showWindow

Get-ADComputer -Filter { name -like "svr1*" } | Select-Object -Property Name

Get-ADComputer -Filter { name -like "svr1*" } | Select-Object -Property Name | Get-Member

Get-ADComputer -Filter { name -like "svr1*" } | Select-Object -ExpandProperty Name

Get-ADComputer -Filter { name -like "svr1*" } | Select-Object -ExpandProperty Name | Get-Member

(Get-ADComputer -Filter { name -like "svr1*" } | Select-Object -ExpandProperty Name)

Get-Service -ComputerName (Get-ADComputer -Filter { name -like "svr1*" } | Select-Object -ExpandProperty Name)


