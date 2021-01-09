# WMIObject & CimInstance

## Differences
* WmiObject = CimINstance
* WmiObject = old
* CimInstance = new
* CimInstance more populate (method, properties,and son on) that wmiObject

## E.g
### Win32_groupUser
````PowerShell
cls
$ErrorActionPreference = "stop"
$ListPC = Get-Content "c:\temp\listPc.txt"

foreach ($PC in $ListPC){
    try{
        $WMI = Get-WmiObject win32_groupUser -ComputerName $PC | ?{$_.GroupComponent -match 'remote desktop users'} 
        $PC + " " + $WMI.PartComponent
    }
    #Errors
    catch{
        $Error[0].Exception
    }
}
````
#### WmiObject
[<img src="https://i.imgur.com/KHcBIzM.png">](https://i.imgur.com/KHcBIzM.png)
#### CimInstance
````PowerShell
﻿cls
$ErrorActionPreference = "stop"
$ListPC = Get-Content "c:\temp\listPc.txt"

foreach ($PC in $ListPC){
    try{
        $WMI = Get-CimInstance win32_groupUser -ComputerName $PC | ?{$_.GroupComponent -match 'remote desktop users'} 
        $PC + " " + $WMI.PartComponent.name
    }
    #Errors
    catch{
        $Error[0].Exception
    }
}
````
[<img src="https://i.imgur.com/oLDsBft.png">](https://i.imgur.com/oLDsBft.png)
