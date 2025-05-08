Clear-Host
$computers="dc1","dc2","svr1"


Write-Host " Obsługa ErrorAction"
foreach($komp in $computers){
    $Error.Clear()
    Get-CimInstance -ClassName win32_bios -ComputerName $komp -ErrorAction SilentlyContinue
    if ($Error[0] -ne $null){
        Write-Host "nie udało się odczytać danych z komputera $komp `n"  -ForegroundColor Red -BackgroundColor Yellow
    }
}

Write-Host "`n`n`n Obsługa Try Catch"
foreach($komp in $computers){
    Try{
        Get-CimInstance -ClassName win32_bios -ComputerName $komp -ErrorAction Stop
       }
    Catch{
        Write-Host "Nie udało się odczytać danych z komputera $komp `n"  -ForegroundColor Red -BackgroundColor Yellow
    }
}