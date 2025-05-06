Get-CimClass

Get-CimClass -Namespace root/cimv2

Get-CimClass  -ClassName win32_k*

Get-CimClass  -ClassName win32_ne*


Get-CimInstance -ClassName win32_networkadapter | FT

Get-CimInstance Win32_Keyboard | FT

Get-CimInstance Win32_LogonSession


#Get-WmiObject -Namespace root\cimv2 –List | Sort Name
#Get-CimClass –Namespace root\CIMv2 | Sort CimClassName


Get-WmiObject –Class Win32_LogicalDisk| FT

Get-CimInstance –ClassName Win32_LogicalDisk

Get-WmiObject –Class Win32_Service 

Get-CimInstance –ClassName Win32_Service 

Get-WmiObject –Class Win32_OperatingSystem 


Get-Cimclass –ClassName Win32_OperatingSystem | Get-Member

Get-Cimclass –ClassName Win32_OperatingSystem |Select-Object -ExpandProperty CimClassMethods 
