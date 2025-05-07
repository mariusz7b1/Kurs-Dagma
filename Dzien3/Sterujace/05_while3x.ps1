# tak dlugo jak warunek prawdziwy
$i=1
Write-Host “Witaj - testujemy pętlę Do ...While"
Do {
    Write-Host “jesteś tu” $i
    $i++
    $answer=Read-Host -Prompt "Bawimy się dalej napisz 'tak' lub cokolwiek"
} While ($answer -eq “tak”)
Write-Host “Koniec- testowania pętli Do ...While`n`n" -BackgroundColor Blue -ForegroundColor Magenta




# tak dlugo jak warunek falszywy
# prawdziwosć warunku konczy petle

Write-Host “Witaj - testujemy pętlę Do ...until"
$i=1
Do {
    Write-Host “jesteś tu” $i
    $i++
    $answer=Read-Host -Prompt "Konczymy zabawę napisz 'tak' lub cokolwiek"
} until ($answer -eq “tak”)
Write-Host “Koniec- testowania pętli Do ...until`n`n" -BackgroundColor Blue -ForegroundColor Magenta




# tak dlugo jak warunek prawdziwy
Write-Host “Witaj - testujemy pętlę while ...."
$i=1
$answer=Read-Host -Prompt "Chcesz się bawić  ?'tak' "
While ($answer -eq “tak”) {
    Write-Host “jesteś tu” $i
    $i++
    if ($i -eq 2)  {continue}
    if ($i -gt 4)  {break}
    $answer=Read-Host -Prompt "Chcesz się bawić  ?'tak' "
}
Write-Host “Koniec- testowania pętli while`n`n" -BackgroundColor Blue -ForegroundColor Magenta