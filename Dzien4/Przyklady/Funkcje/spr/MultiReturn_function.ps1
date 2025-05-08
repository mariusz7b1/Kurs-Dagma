Function MultiReturn
{
    param(
    [int]$zm1,
    [int]$zm2
   )
    $sum=$zm1+$zm2
    $ilo=$zm1*$zm2
    try{
       $dev=$zm1/$zm2
    }catch
    {
        Write-Host "Dzielenie przez zero"
        $dev=$null
    }
        return $sum,$ilo,$dev
}
Function wypisz-tab ($ret)
{
    $i=0
    foreach($ele in $ret){
        Write-Host "ret[$i]=$ele"
        $i++
     }


}

$ret=MultiReturn 15 10
wypisz-tab $ret

$ret=MultiReturn 11 0
wypisz-tab $ret


