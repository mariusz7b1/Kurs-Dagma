# Zadanie 1
function LiczbaSlow {
    param([string]$tekst)
    return ($tekst.split()).Count
}

# Zadanie 2
function NajwiekszaLiczba {
    param([int[]]$liczby)
    return ($liczby | Sort-Object -Descending)[0]
}

# Zadanie 3
function OdwrocTekst {
    param([string]$tekst)
    return -join $tekst[-1..-($tekst.Length)]
}

# Zadanie 4
function CzyPalindrom {
    param([string]$slowo)
    $odwrocone = OdwrocTekst -tekst $slowo
    return $slowo -eq $odwrocone
}

# Zadanie 5
function SumaKwadratow {
    param([int[]]$liczby)
    return ($liczby | ForEach-Object { $_ * $_ } | Measure-Object -Sum).Sum
}

# Zadanie 6
function FiltrujParzyste {
    param([int[]]$liczby)
    return $liczby | Where-Object { $_ % 2 -eq 0 }
}

# Zadanie 7
function LiczbaWystapien {
    param([array]$lista, $element)
    return ($lista | Where-Object { $_ -eq $element }).Count
}

# Zadanie 8
function KonkatenacjaList {
    param([array]$lista1, [array]$lista2)
    return $lista1 + $lista2
}

# Zadanie 9
function CzyZawiera {
    param([string]$glownyTekst, [string]$szukanyTekst)
    return $glownyTekst.Contains($szukanyTekst)
}

# Zadanie 10
function CelsjuszNaFahrenheit {
    param([double]$celsjusz)
    return $celsjusz * 9/5 + 32
}



# Testowanie funkcji
Write-Host "Zadanie 1: $(LiczbaSlow -tekst "Ala ma kota a Tomek ma psa")"
Write-Host "Zadanie 2: $(NajwiekszaLiczba -liczby 1,2,3,11,4,5,6,7,8)"
Write-Host "Zadanie 3: $(OdwrocTekst -tekst 'PowerShell')"
Write-Host "Zadanie 4: $(CzyPalindrom -slowo 'kajak')"
Write-Host "Zadanie 5: $(SumaKwadratow -liczby 1,2,3,10)"
Write-Host "Zadanie 6: $(FiltrujParzyste -liczby (1..10))"
Write-Host "Zadanie 7: $(LiczbaWystapien -lista 1,2,3,4,3,2,13,3,3 -element 3)"
Write-Host "Zadanie 8: $(KonkatenacjaList -lista1 1,2,3 -lista2 4,5,6)"
Write-Host "Zadanie 9: $(CzyZawiera -glownyTekst 'Hello World' -szukanyTekst 'World')"
Write-Host "Zadanie 10: $(CelsjuszNaFahrenheit -celsjusz 25)"

