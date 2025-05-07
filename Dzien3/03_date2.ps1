[datetime] | get-member

$data1=Get-Date

$data2=$data1.AddYears(-70)

$t1=$data1.ToFileTime()
$t2=$data2.ToFileTime()

[datetime]::fromfiletime(0)
[datetime]::fromfiletime($t1*2)
[datetime]::fromfiletime($t2)


Get-Date 129442497539436142
# returns Thursday, March 10, 0411 4:55:53 PM

