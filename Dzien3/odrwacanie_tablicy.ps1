$tekst="Uczymy się PowerShell".ToCharArray()

Write-Host $tekst[-1..-$tekst.Length]

[array]::Reverse($tekst)
Write-Host $tekst

[array]::Sort($tekst)
Write-Host $tekst