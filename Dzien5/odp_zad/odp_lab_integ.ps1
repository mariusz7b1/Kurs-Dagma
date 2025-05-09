function Get-Folder ($sciezkaDoPliku) {
    $tabStr = $sciezkaDoPliku.split("\")    
    $tabStr = $tabStr[0..($tabStr.Length - 2)]
    $sciezkaDoPliku = $tabStr -join "\"
    return $sciezkaDoPliku
}

function Get-Password($dane) {
    $password = $dane[0].Substring(0, 3)
    $password += $dane[1].Substring(0, 3)
    $password += $dane[2].Substring(($dane[2].Length) - 3)
    $password += $dane[3].Substring(0, 3) + "#!"
    return $password
}
function Get-City($adres) {
    $adres = $adres.split(",")
    $miasto = $adres[1].Substring(7)
    return $miasto
}
 
function Get-UPN($listaUsername, $upn) {
    $i = 1
    $newUpn = $upn
    while ( $listaUsername -contains $newUpn) {
        $newUpn = $Upn + $i
        $i++
    }
    return $newUpn
}


function Convert-CustomData {
    param(
        [string] $sciezkaDoPliku
    )
    try {
        # wczytanie danych, do przemyślenia wczytywanie porcjami 
        $daneZrodlowe = Get-Content -Path $sciezkaDoPliku -Encoding UTF8 -ErrorAction Stop
        
        $sciezkaDoPlikuOut = (Get-Folder $sciezkaDoPliku) + "\users.csv"

        "Name,userPrincipalName,passwordProfile,accountEnabled,givenName,surname,city" | 
        Set-Content $sciezkaDoPlikuOut    -ErrorAction Stop
    }
    catch {
        Return $false
    }
    
    
    $email = "@keja.msft"


    $listaUsername = New-Object System.Collections.ArrayList
    

    foreach ($linia in $daneZrodlowe) {
        # trorze tablice 7 elementowa dla moich danych
        $daneWynik = @("", "", "", "", "", "", "")
        $dane = $linia.split(";")
        
        
        #Name
        $daneWynik[0] = $dane[0] + ' ' + $dane[1]
        
        #userPrincipalName
        $upn = ($dane[0] + '.' + $dane[1]).ToLower()

        # zwraca unikatowy upn
        $upn = Get-UPN $listaUsername $upn

        #dodaje upn do listy 
        $listaUsername.Add($upn) | Out-Null
        $daneWynik[1] = $upn + $email
        
        #passwordProfile
        $daneWynik[2] = Get-Password $dane
        
        #accountEnabled
        $daneWynik[3] = "True"
        
        #givenName
        $daneWynik[4] = $dane[0]
        
        #surname
        $daneWynik[5] = $dane[1]
        
        #city" 
        $daneWynik[6] = Get-City $dane[4]
        $daneWynik -join "," | Add-Content $sciezkaDoPlikuOut    
    }
    Return $true
}

Clear-Host
if (Convert-CustomData "c:\dane\dane1K.txt " -eq $true) {
    Write-Host "Poszło super :)" -BackgroundColor Green -ForegroundColor DarkBlue
}
else {
    Write-Host "Złapałeś BŁAD " -BackgroundColor Yellow -ForegroundColor Red
}
