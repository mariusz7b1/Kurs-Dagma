Function szukaj_dir()
{
$sciezka=$args[0]
[int] $zm1=0

$dir=Get-ChildItem -LiteralPath $sciezka
foreach($zm in $dir)
{
    
    $zm.BaseName+" " +$zm.mode+$zm.Length
    if($zm.mode -match "d")
    {
        $zm2=szukaj_dir $zm.FullName
        
        
        $zm1+=$zm2
     
    } 
    else 
    {
        $zm1++
    }
}
write-host $zm1.GetType()
return $zm1
}

Clear-Host
$liczbaPlikow=szukaj_dir "d:\dane"

$liczbaPlikow
