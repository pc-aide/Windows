# Tpm

## get-member
* Name
  * IsActivated_InitialValue (bool)
  * IsEnabled_InitialValue (bool)

## Namespace
root\cimv2\security\MicrosoftTpm

## Class
win32_tpm

## E.g.
````PowerShell
﻿cls
        #############
        # Variables #
        #############
$ErrorActionPreference = "Stop"
$ListPC = Get-Content "c:\Temp\ListPC.txt"
$Class = "Win32_Tpm"
$Namespace = "root\cimv2\Security\MicrosoftTpm"
$Value = "IsActivated_InitialValue"

foreach ($PC in $ListPC){
    try{
        $StateValue = (Get-WmiObject -Namespace $Namespace -Class $Class -ComputerName $PC).$Value
        #If empty so it's false
        if ($StateValue -eq $null){
            $StateValue = "False"
        }
        $PC + " " + $StateValue
    }
    #Errors
    catch{
        $PC + " " + $Error[0].exception
    }
}  
````
[<img src="https://i.imgur.com/B1K3imv.png">](https://i.imgur.com/B1K3imv.png)
