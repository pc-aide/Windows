# EncryptableVolume

## Get-member
* Name
  * ProtectionStatus (0 PROTECTION OFF | 1 PROTECTION ON | 2 PROTECTION UNKNOWN)
  * EncryptionMethod (0 None | 1 AES_128_WITH_DIFFUSER | 2 AES_256_WITH_DIFFUSER | 3 AES_128 | 4 AES_256 | 5 HARDWARE_ENCRYPTION | 6 XTS_AES_128 | 7 XTS_AES_256)
  * DriverLetter

## Namespace
* root\cimv2\Security\MicrosoftVolumeEncryption

## Class
* win32_encryptableVolume

## E.g.
````PowerShell
cls
$ErrorActionPreference = "Stop"
        #############
        # Variables #
        #############
$Namespace = "root\cimV2\Security\MicrosoftVolumeEncryption"
$Class = "win32_EncryptableVolume"
$Value = "ProtectionStatus"
$ListPC = Get-Content "C:\Temp\ListPC.txt"

#Header
Write-Host "PC" "ProectionStatus" -ForegroundColor Cyan
foreach ($PC in $ListPC){
    Try{
        $ValueEncryption = (Get-WmiObject -Namespace $Namespace -Class $Class -ComputerName $PC).$Value
        #Value: 0 Protection OFF | 1 Protection ON
        $PC + " " + $ValueEncryption
    }
    #Errors
    catch{
        $PC + " " + $Error[0].exeption
    }
}
````
[<img src="https://i.imgur.com/6irJyQF.png">](https://i.imgur.com/6irJyQF.png)

