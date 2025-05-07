# Iteracja przez tablic
$liczby = 1, 2, 3, 4, 5
foreach ($liczba in $liczby) 
{
    Write-Host "Aktualna liczba to $liczba"
}

# Iteracja przez listę obiektów
$osoby = @(
    @{Imie="Jan"; Nazwisko="Kowalski"},
    @{Imie="Anna"; Nazwisko="Nowak"},
    @{Imie="Piotr"; Nazwisko="Winiewski"}
)
foreach ($osoba in $osoby) {
    Write-Host "Imię: $($osoba.Imie), Nazwisko: $($osoba.Nazwisko)"
}

# Iteracja przez słownik
$slownik = @{
    'jeden' = 1;
    'dwa' = 2;
    'trzy' = 3
}
foreach ($klucz in $slownik.Keys) 
{
    Write-Host "Klucz: $klucz, Wartość: $($slownik[$klucz])"
}

# Iteracja przez pliki w folderze
$sciezkaDoFolderu = "d:\dane"

foreach ($plik in Get-ChildItem -Path $sciezkaDoFolderu -File) 
{
    Write-Host "Znaleziono plik: $($plik.baseName)"
}
