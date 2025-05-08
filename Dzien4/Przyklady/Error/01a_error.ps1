Clear-Host
try {
    $wynik=10/0
}

catch [System.DivideByZeroException] {
    Write-Host "Nie mozna dzielic przez 0."
}
catch {
    Write-Host "Nieznany blad"
    Write-Host $Error[0].Exception.Message
}
finally {
    Write-Host "Operacja zakonczona"
}
