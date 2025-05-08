Function TestScope {
    Write-Host "Na początku funkcji `$var wynosi $var"
    Read-Host "Naciśnij klawisz, aby kontynuować"
    $var = "zmienna funkcji"
    Write-Host "Po definicji w funkcji `$var wynosi $var"
    Read-Host "Naciśnij klawisz, aby kontynuować"
    Write-Host "Zakres skryptu nadal jest dostępny w funkcji: $script:var"
    Read-Host
    Return($var)
}
Clear-Host
$var = "Zmienna skryptu"
Write-Host "W skrypcie przed funkcją `$var wynosi $var"
Read-Host "Naciśnij klawisz, aby kontynuować"

$functionVar=TestScope

Write-Host "W skrypcie po funkcji `$var wynosi $var"
Read-Host "Naciśnij klawisz, aby kontynuować"
Write-Host "Zwrócona `$functionVar wynosi $functionVar"
