
for ($i = 1; $i -le 5; $i++)
{
    Write-Host "Licznik wynosi: $i"
}



$tablica = @(1, 2, 3, 4, 5)
for ($i = 0; $i -lt $tablica.Length; $i++)
{
    Write-Host "Element tablicy: $($tablica[$i])"
}


Write-Host "break"
for ($i = 1; $i -le 10; $i++)
{
    if ($i -eq 6)
    {
        break
    }
    Write-Host $i
}
# Wypisze liczby od 1 do 5, a potem ...™


# 'continue'
Write-Host "uzycie 'continue'"
for ($i = 1; $i -le 10; $i++)
{
    if ($i % 2 -eq 0)
    {
        continue
    }
    Write-Host $i
}
# Wypisze tylko liczby nieparzyste od 1 do 10

# 'break' i 'continue' razem
Write-Host "'break' i 'continue' razem"
for ($i = 1; $i -le 10; $i++)
{
    if ($i -eq 6)
    {
        break
    }
    if ($i % 2 -eq 0)
    {
        continue
    }
    Write-Host $i
}
# Wypisze liczby nieparzyste od 1 do 5, a potem zakonczy
