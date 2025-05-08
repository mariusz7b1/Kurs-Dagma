function sumuj1([int]$a, [int]$b)
{

    return $a+$b
}

function sumuj2()
{
    # rozwiń go aby sumować dololną ilość argumentów 
    Write-Host "Do funkcji zostaly przekazane " -NoNewline
    Write-Host $args -Separator " "
    [int]$a=$args[0]
    [int]$b=$args[1]
    return $a+$b
}


Clear-Host

$suma=sumuj1 1 5
Write-Host "wartosc=$test1, typ=" ($suma.GetType().name)

$suma=sumuj2 1 7
Write-Host "wartosc=$test1, typ=" ($suma.GetType().name)
