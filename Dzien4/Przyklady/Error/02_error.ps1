Clear-Host

$Error.Clear()

$file = "test4.txt"

# tworze plik 
New-Item "d:\$file"


New-Item "d:\$file"
$Error.Clear()


New-Item "d:\$file" -ErrorAction SilentlyContinue
Write-Host "Bład", ($Error[0].Exception.GetType().FullName)
$Error.Clear()

# ponownie tworze plik 
New-Item "d:\$file" -ErrorAction Inquire
$Error[0].Exception.GetType().FullName
