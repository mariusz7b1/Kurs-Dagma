# Deklaracja zmiennej tekstowej
[string]$tekst = "Witaj, Świecie"

# Użycie metody Split i join
# Dzieli string na tablicę na podstawie separatora
$podzielonyTekst = $tekst.Split(',')


Write-Host "Podzielony tekst: $($podzielonyTekst -join ' | ')"

# Użycie metody Replace
$zastapionyTekst = $tekst.Replace('Witaj', 'Do widzenia')
Write-Host "Zastapiony tekst: $zastapionyTekst"

# Użycie metody Contains
$czyZawiera = $tekst.Contains('Świecie')
Write-Host "Czy zawiera 'Świecie': $czyZawiera"

# Użycie metody StartsWith i EndsWith
# Sprawdza, czy tekst zaczyna się lub kończy podciągiem
$czyZaczyna = $tekst.StartsWith('Witaj')
$czyKoczy = $tekst.EndsWith('Świecie')
Write-Host "Czy zaczyna się od 'Witaj': $czyZaczyna"
Write-Host "Czy kończy się na 'Świecie': $czyKoczy"

# Użycie metody Trim
# Usuwa białe znaki na początku i na końcu tekstu

$tekstZBialymiZnakami = "    $tekst    "
$obcietyTekst = $tekstZBialymiZnakami.Trim()


# Użycie metody IndexOf
# Zwraca indeks pierwszego wystąpienia podciągu
$indeks = $tekst.IndexOf('Świecie')
Write-Host "Indeks podciągu 'Świecie': $indeks"

# Użyie metody ToCharArray
# Zamienia string na tablicę znaków
$tablicaZnakow = $tekst.ToCharArray()

Write-Host "Tekst jako tablica znakow: $($tablicaZnakow -join ' | ')"
