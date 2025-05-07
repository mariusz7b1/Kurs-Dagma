$tablica=@()
$tablica.GetType()
# tworzenie listy
# 1
[System.Collections.ArrayList]$lista1=@()

# 2
$lista2=New-Object System.Collections.ArrayList

$lista1.GetType()
$lista2.GetType()

$balck_hole=$lista1.Add("ala")

$lista2.Add(1) | Out-Null

