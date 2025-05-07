$tab1=@{"nazwisko"="Kowalski";"Imie"="Jan"}
$tab2=@{"nazwisko"="Nowak";"Imie"="Adam"}
$dyrekcja = @{"Dyrektor"=$tab1;"Zastepca"=$tab2}

$dyrekcja.Dyrektor
$dyrekcja.zastepca.imie
