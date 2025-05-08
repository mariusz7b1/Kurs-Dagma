Clear-Host
try {
    [int]$wartosc= Read-Host -Prompt "podaj wartosc liczbowa"
    $wynik=100/$wartosc
}

catch [System.DivideByZeroException] {
    Write-Host "Nie można dzielić przez 0."
}
catch {
    Write-Host $Error[0].Exception.Message
    }
finally {
    Write-Host "Operacja zakończona"
}
