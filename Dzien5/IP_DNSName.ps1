param (
    
    [string]$DnsServer="Lon-DC1",
    [string]$DnsZone ="adatum.com",
    [string]$IpListPath="e:\ip.txt",
    [string]$OutputCsvPath="e:\wynik.txt"
)

# Nawiazanie sesji do zdalnego serwera DNS (kontrolera domeny)
Write-Host "Nawiazywanie sesji z $DnsServer..." -ForegroundColor Cyan
$session = New-PSSession -ComputerName $DnsServer


# Import modulu DNS zdalnie
Import-Module -PSSession $session -Name DnsServer -ErrorAction Stop

Write-Host "Pobieranie rekordow A ze strefy DNS: $DnsZone" -ForegroundColor Cyan
$dnsRecords = Get-DnsServerResourceRecord -ZoneName $DnsZone -ComputerName $DnsServer -RRType "A"

$DaneDNS=@{}

foreach($rekord in $dnsRecords)
{
    $hostname=$rekord.hostname
    $ipaddress=$rekord.RecordData.IPv4Address
    
    $DaneDNS.$ipaddress=$hostname

    
    #Write-Host "Nazwa:$hostname adresIP:$ipaddress"
}

$ipTable=Get-Content -LiteralPath $IpListPath

# przygotowanie lini naglowka dla pliku CSV
# !!!! Uwaga doda Try Except - operacja moze sie nie udac
"IpAddress;Nazwa" | Set-Content -LiteralPath $OutputCsvPath 

foreach ($iphost in $ipTable)
{
    if ($DaneDNS.ContainsKey($iphost))
    {
        Write-Host "znalazlem nazwe dla host $iphost " -NoNewline
        Write-Host $DaneDNS[$iphost] -ForegroundColor Yellow

        <# 
            zapisuje dane do pliku, nazwa pliku w zmiennej ...  sepeartor ;
            komentarz wielolinikowy   


        #>

        "$iphost; "| Add-Content -LiteralPath $OutputCsvPath -NoNewline
        $DaneDNS[$iphost] | Add-Content -LiteralPath $OutputCsvPath 
        
        # wywok na zdalnym komuterze 
        Invoke-Command -ComputerName $DaneDNS[$iphost] -ScriptBlock {Get-Process | Select-Object -Last 2}
    
    }
}




