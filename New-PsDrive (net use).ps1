<#
--------------------------------------------------------------------------------------------------
    Doc.MS: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-psdrive?view=powershell-6
 
    Ars:
--------------------------------------------------------------------------------------------------
#>
 
#https://imgur.com/w4SxfTX
$Cred = get-Credential -credential admin
 
#https://imgur.com/0EiJWwg
new-PsDrive -name "z" -Root \\192.168.1.159 -Persist -PSProvider "FileSystem" -Credential $Cred
 
#https://imgur.com/Wkz91bD
get-psDrive
