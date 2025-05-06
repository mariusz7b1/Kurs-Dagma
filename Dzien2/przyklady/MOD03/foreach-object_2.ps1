Get-ChildItem -Path e:\ -Recurse -Directory | foreach {$_.GetFiles()} | where {$_.Length -lt 30 -and $_.Extension -eq ".txt"}

