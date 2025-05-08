# Zadanie 1: Podział‚ przez zero
try {
    $result = 10 / 0
}
catch {
    Write-Host "Nie można dzielić przez zero."
}

# Zadanie 2: Odczyt pliku
try {
    Get-Content 'nieistniejacy_plik.txt' -ErrorAction Stop
}
catch {
    Write-Host "Nie można znaleźć pliku."
}

# Zadanie 3: Konwersja typu
try {
    [int]$number = "tekst"
}
catch {
    Write-Host "Nie można przekształcić tekstu na liczbę."
}

# Zadanie 4: Wywołanie nieistniejącej funkcji
try {
    NieistniejacaFunkcja
}
catch {
    Write-Host "Funkcja nie istnieje."
}

# Zadanie 5: zagnieżdzony try-catch
try {
    try {
        $result = 10 / 0
    }
    catch {
        Write-Host "Wewnętrzny bład."
        throw
    }
}
catch {
    Write-Host "Zewnętrzny bład."
}

# Zadanie 6: Wielokrotne catch
try {
    $result = 10 / 0
}
catch [System.DivideByZeroException] {
    Write-Host "Nie można dzielić przez zero."
}
catch {
    Write-Host "Inny błąd."
}

# Zadanie 7: Blok Finally
try {
    $result = 10 / 0
}
catch {
        Write-Host "Nie można dzielić przez zero."
}
finally {
    Write-Host "Koniec działania."
}


$Error.Clear()
# Zadanie 8: Logowanie błędów
try {
    $result = 10 / 0
}
catch {
    Add-Content -Path "log.txt" -Value "błąd $Error"
}
