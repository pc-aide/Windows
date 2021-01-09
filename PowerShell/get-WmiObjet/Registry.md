# Registry

## Script
````PowerShell
#https://imgur.com/prvVNMx
$HKLM = 2147483650
$Key = "system\controlSet001\Control\SecureBoot\State"
$value = "UEFISecureBootEnabled"

$WMI = get-wmiObject -list "StdREgProv" -Namespace root\default -ComputerName localhost
($WMI.GetDWORDValue($HKLM,$Key,$Value)).uvalue
$WMI2 = ($WMI.GetDWORDValue($HKLM,$Key,$Value)).uvalue
````
