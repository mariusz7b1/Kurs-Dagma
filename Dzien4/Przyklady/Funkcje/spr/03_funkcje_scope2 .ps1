Clear-Host
Function test1()
{
    $G1++
    $G2++
    $G3=10
    Write-Host "jestesm w funkcji 'test1' G1=$G1, G2=$G2, G3=$G3"

  }


Function test2()
{
    $G1++
    $script:G2++
    Write-Host "jestesm w funkcji 'test2' G1=$G1, G2=$G2, G3=$G3"
}



$G1=10
$G2=20
test1
Write-Host "jestesm w Skrypcie        G1=$G1, G2=$G2, G3=$G3"
$G3=30
test2
Write-Host "jestesm w Skrypcie        G1=$G1, G2=$G2, G3=$G3"
