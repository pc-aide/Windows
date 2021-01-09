# WMIMonitorConnectionParams

## get-member
* Properties
  * VideoOutPutTechnology

## Namespace
* root\wmi

## Class
* WMIMonitorConnectionParams

## LEGEND
* D3DKMDT_VOT_UNINITIALIZED	-2
* D3DKMDT_VOT_OTHER	-1
* D3DKMDT_VOT_HD15 (VGA)	0
* D3DKMDT_VOT_SVIDEO	1
* D3DKMDT_VOT_COMPOSITE_VIDEO	2
* D3DKMDT_VOT_COMPONENT_VIDEO	3
* D3DKMDT_VOT_DVI	4
* D3DKMDT_VOT_HDMI	5
* D3DKMDT_VOT_LVDS	6
* D3DKMDT_VOT_D_JPN	8
* D3DKMDT_VOT_SDI	9
* D3DKMDT_VOT_DISPLAYPORT_EXTERNAL	10
* D3DKMDT_VOT_DISPLAYPORT_EMBEDDED	11
* D3DKMDT_VOT_UDI_EXTERNAL	12
* D3DKMDT_VOT_UDI_EMBEDDED	13
* D3DKMDT_VOT_SDTVDONGLE	14
* D3DKMDT_VOT_MIRACAST	15

## E.g.
### WmiObject
* code 01
````Powershell
cls
$ErrorActionPreference = "Stop"
$ListPC = Get-Content "c:\Temp\ListPC.txt"
$Namespace = "root\wmi"
$ClassName = "wmiMonitorConnectionParams"
$Value = "VideoOutPutTechnology"

#Headers
Write-Host "Host VideoOutPut" -ForegroundColor Green
foreach ($PC in $ListPC){
    try{
        $VideoOutPut = (Get-WmiObject -Namespace $Namespace -ClassName $ClassName -ComputerName $PC).$Value
        $PC + " " + $VideoOutPut
    }
    #Errors
    catch{
        $PC + " " + $Error[0].Exception.Message
    }
}
````
[<img src="https://i.imgur.com/YKrw5Qz.png">](https://i.imgur.com/YKrw5Qz.png)

* Code 02
````PowerShell
cls
    $ErrorActionPreference = "Stop"
    $ListPC = Get-Content "c:\temp\ListPC.txt"
    $Namespace = "root\wmi"
    $Query = "select VideoOutPutTechnology from wmiMonitorConnectionParams"
    $Value = "VideoOutPutTechnology"

    #Headers
    Write-Host "PC VideoOutPutTechnology" -ForegroundColor Green
    foreach ($PC in $ListPC){
        Try{
            $VideoOutPut = (Get-WmiObject -Namespace $Namespace -Query $Query -ComputerName $PC).$Value
            $PC + " " + $VideoOutPut
        }
        #Errors
        Catch{
            $PC + " " + $Error[0].Exception.Message
        }
    }
````

### CimInstance
[<img src="https://i.imgur.com/TUEYFqV.png">](https://i.imgur.com/TUEYFqV.png)

## Measure-command
* Code 01
  * WmiObject
    * (6 items).Milliseconds = ~241
  * CimInstance
    * (6 items).Milliseconds = ~141
* Code 02
  * WmiObject
    * (6 items).Milliseconds = ~271
  * CimInstance
    * (6 items).Milliseconds = ~158

## New-Object
* Code 03
````PowerShell
cls
$Obj = Get-WmiObject -Namespace root\wmi -Class wmiMonitorConnectionParams -ComputerName E99998
New-Object psobject -Property @{
    "VideoOutPutTechnology" = $Obj.VideoOutPutTechnology
}
````
[<img src="https://i.imgur.com/mGNLJxx.png">](https://i.imgur.com/mGNLJxx.png)

## 2147483648 (screen laptop)
````PowerShell
# VideoOutPut : 10 <- cable mini DisplayPort (Microsoft Surface Dock) to HDMI Monitor
get-cimInstance -namespace root\wmi -class wmiMonitorConnectionParams
get-cimInstance win32_ComputerSystem | select Model
````
[<img src="https://i.imgur.com/bZNy6NB.png">](https://i.imgur.com/bZNy6NB.png)

## 4294967295 (no driver installed nvidia)
* TESmart Commutateur KVM HDMI 4K Ultra HD 4 x 1 HDMI 3840 x 2160@60
[<img src="https://i.imgur.com/Lw8xT8l.png">](https://i.imgur.com/Lw8xT8l.png)
* Cable HDMI  male to HDMI male
[<img src="https://i.imgur.com/RPqHip6.png">](https://i.imgur.com/RPqHip6.png)
