# Deklaracja zmiennej tekstowej
[string]$tekst = "Witaj, świecie"

# Wyświetlenie zawartości zmiennej
Write-Host "Zawartość zmiennej tekst to: $tekst"

# Konkatenacja stringów
$powitanie = "Witaj"
$imie = "Jan"
$pelnePowitanie = "$powitanie, $imie"
Write-Host "Pelne powitanie: $pelnePowitanie"

# Znaki specjalne w tekście (np. nowa linia)
$tekstZeZnakamiSpecjalnymi = "Linia 1`nLinia 2"
Write-Host "Tekst ze znakami specjalnymi:"
Write-Host $tekstZeZnakamiSpecjalnymi


# Pobieranie dlugosci
$dlugosc = $tekst.Length
Write-Host "Długość zmiennej tekst to: $dlugosc"

