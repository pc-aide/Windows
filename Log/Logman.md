# logman

## cmdlet PS
````PowerShell
#https://theorypc.ca/2016/03/24/appv5-the-trouble-with-appv5-logs-and-a-solution/
logman create trace AppVKB3037955Debug -o AppVDebug.ETL -cnf 01:00:00 -nb 10 250 -bs 16 -max 512 -ow -y
$providers = Get-WinEvent -ListProvider *Microsoft-Appv-* | Select-Object Name | Where-Object -Property Name -NotMatch "SharedPerformance"
foreach ($provider in $providers) { logman update trace AppVkb3037955Debug -p $($provider.Name) 0xe000000000ffffff 0x5 | Out-Null }
Logman Start AppVKB3037955Debug
 
cls
$nil = Read-Host "Please reproduce your issue now. Press [ENTER] when done."
 
Logman Stop AppVKB3037955Debug
dir *AppVDebug*.etl | foreach { netsh trace convert $_ overwrite=yes}
Logman Delete AppVKB3037955Debug
````
