Get-Process | Where-Object WorkingSet -gt 100MB


Get-Process | Where-Object -FilterScript  { $PSItem.WorkingSet -gt 100MB -and $PSItem.cpu -lt 50} 

Get-Process | Where-Object   { $_.WorkingSet -gt 100MB -and $_.cpu -lt 50} 


Get-ChildItem -File | Where-Object { ($_.Extension -eq '.txt' -or $_.Extension -eq '.ps1') -and $_.Length -gt 20 }


Get-ChildItem "d:\" -Recurse -File | Where-Object { $_.Length -gt 1MB } | Sort-Object Length -Descending


1..10 | Where-Object { $_ -gt 5 } 


1..100 | Where-Object { ($_ % 3) -eq 0 } 