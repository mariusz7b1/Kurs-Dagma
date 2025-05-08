function Pokaz-Argumenty {
    param (
        [Parameter(Position=0, ValueFromRemainingArguments=$true)]
        $args
    )
    
    Write-Host "Typ argumentów: $($args.GetType().FullName)"
    Write-Host "Przekazano $($args.Count) argumentów"
    $args -join ","
}

function Zwroc-Wartosc {
    param (
        [int]$war1
    )
    
    Write-Host "Typ argumentu: $($war1.GetType().FullName)"
    return $war1
}

function Modyfikuj-Liste {
    param (
        [ref]$lista
    )
    
    Write-Host "ID listy: $($lista.GetHashCode())"
    $lista.Value[-1] = 999
}

function Obsluguj-Argumenty {
    param (
        [Parameter(Position=0, ValueFromRemainingArguments=$true)]
        $args,
        [switch]$imie,
        [switch]$nazwisko
    )

    Write-Host "Argumenty pozycyjne: $args"
    Write-Host "Argumenty nazwane: imie=$imie, nazwisko=$nazwisko"
}

# Czyść ekran
Clear-Host

# Testy
$lst1 = @(1, 2, 3, 4, 5)

Pokaz-Argumenty "ala", 1, 2.7, $lst1
Write-Host ""

Obsluguj-Argumenty 1, 2, 3 -imie -nazwisko
Write-Host ""

Write-Host "Lista przed: $lst1"
Write-Host "ID listy: $($lst1.GetHashCode())"

Modyfikuj-Liste ([ref]$lst1)

Write-Host "Lista po: $lst1"
Write-Host ""

$a = 10
Pokaz-Argumenty $a
Write-Host ""

Pokaz-Argumenty $lst1
Write-Host ""

Pokaz-Argumenty $($lst1 -join ",")
Write-Host ""
