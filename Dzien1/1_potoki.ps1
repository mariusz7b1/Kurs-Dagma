# View object 
Get-Service | Get-Member
Get-Process | Get-Member
Get-ChildItem | Get-Member
Get-ADUser -Filter * | Get-Member
Get-ADUsclser -Filter * -Properties | Get-Member

#Formating pipeline
Get-Service
Get-Service | Format-List -Property Name, Status
Get-ADComputer -Filter * -Properties OperatingSystem
Get-ADComputer -Filter * -Properties OperatingSystem | ft -Property Name, OperatingSystem
Get-ADUser -Filter *
Get-ADUser -Filter * | fw -AutoSize

# SORT,SELECT
Get-Process
Get-Process | Sort-Object –Property ID
Get-Service | Sort-Object –Property Status 
Get-Service | Sort-Object –Property Status -Descending
Get-EventLog –LogName Security –Newest 10
Get-EventLog –LogName Security –Newest 10 | Sort-Object –Property TimeWritten
Get-ADUser -Filter * | Sort-Object –Property SurName | fw -AutoSize


#Measuring objects

Get-Process | Measure-Object –Property VM –Sum –Average

#Selecting objects
Get-Process | Sort-Object –Property VM –Descending | Select-Object –First 10
Get-Date | Select-Object –Property DayOfWeek
Get-EventLog –Newest 10 –LogName Security | Select-Object –Property EventID,TimeWritten,Message
Get-ADComputer -Filter * -Properties OperatingSystem | Sort -Property OperatingSystem | Select-Object -Property OperatingSystem,Name | fl -GroupBy OperatingSystem -Property Name

#Creating calculated properties
# $PSItem.PM == {$_.PM 
Get-Process | Select-Object Name,ID, @{n='VirtualMemory(MB)';e={$_.VM / 1MB}}, @{n='PagedMemory(MB)';e={$PSItem.PM / 1MB}}

