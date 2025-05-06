
# Operatory formatowania -f 

# Formatowanie liczb całkowitych z wiodącymi zerami:
$number = 7
"{0:D5}" -f $number # Wyjście: "00007"

# Formatowanie liczb zmiennoprzecinkowych z określoną liczbą miejsc po przecinku:
$number = 123.45678
"{0:F2}" -f $number # Wyjście: "123.46"

# Formatowanie liczb w formacie walutowym:
$number = 12345.6789
"{0:C}" -f $number # Wyjście: "$12,345.68"

# Formatowanie liczb jako procenty:
$number = 0.789
"{0:P2}" -f $number # Wyjście: "78.90 %"

# Formatowanie liczby w formacie heksadecymalnym:
$number = 255
"{0:X}" -f $number # Wyjście: "FF"

# Łączenie wielu wartości:
$firstName = "Jan"
$lastName = "Kowalski"
$age = 30
"{0} {1} ma {2} lat." -f $firstName, $lastName, $age # Wyjście: "Ja