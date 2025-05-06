Clear-Host
Get-Process n* | Select-Object name, vm, @{n="VM(GB)";e={$_.vm/1GB}}
Get-Process n* | Select-Object name,  @{n="VM(GB)";e={'{0:N2}' -f ($_.vm/1GB)}}
