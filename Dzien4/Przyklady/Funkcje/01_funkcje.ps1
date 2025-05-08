function Pozdrowienia {
    param (
        [string]$imie
    )
    Write-Host "Witaj $imie. Jak się masz?"
}

function Przedstawiam-Sie {
    $napis = "Cześć, jestem PowerShell"
    $dlugoscNapisu = $napis.Length
    Write-Host ("*" * ($dlugoscNapisu + 4))
    Write-Host "* $napis *"
    Write-Host ("*" * ($dlugoscNapisu + 4))
}

function Powitanie {
    Przedstawiam-Sie
    $imie = Read-Host "A jak ty masz na imię?"
    return $imie
}

function Main
{
    # Wywołanie funkcji
    $imieKursanta = Powitanie

    Pozdrowienia -imie $imieKursanta
}

main