# CreateFolders

## Path
* Path Object:
* `-Path $($SiteCode.Name+":\<StringNoSpace>\<SubFolder>")`
  1) DeviceCollection
  2) Application

## SRC
* https://github.com/JonathanLefebvreGlobensky/ConfigMgr/tree/master/Powershell

## Device Collection
````powershell
#Load Configuration Manager PowerShell Module
Import-module ($Env:SMS_ADMIN_UI_PATH.Substring(0,$Env:SMS_ADMIN_UI_PATH.Length-5) + '\ConfigurationManager.psd1')

# Get SiteCode
$SiteCode = Get-PSDrive -PSProvider CMSITE
Set-location $SiteCode":"

#########################
# Create Defaut Folders #
#########################
# Device Collection
new-item -Name 'Master Collections' -Path $($SiteCode.Name+":\DeviceCollection")
````
[<img src="https://i.imgur.com/szuqCLt.png">](https://i.imgur.com/szuqCLt.png)
[<img src="https://i.imgur.com/NQtU1wM.png">](https://i.imgur.com/NQtU1wM.png)

---

## Applications
````powershell
#Load Configuration Manager PowerShell Module
Import-module ($Env:SMS_ADMIN_UI_PATH.Substring(0,$Env:SMS_ADMIN_UI_PATH.Length-5) + '\ConfigurationManager.psd1')

# Get SiteCode
$SiteCode = Get-PSDrive -PSProvider CMSITE
Set-location $SiteCode":"

#########################
# Create Defaut Folders #
#########################
# Application
new-item -Name 'test' -Path $($SiteCode.Name+":\Application")
````
[<img src="https://i.imgur.com/S9Ocb6y.png">](https://i.imgur.com/S9Ocb6y.png)

### SubFolder
````powershell
new-item -Name 'test2' -Path $($SiteCode.Name+":\Application\test")
````
[<img src="https://i.imgur.com/ooGt29K.png">](https://i.imgur.com/ooGt29K.png)

---
## Foreach
* Don't manage subFolder here!
````powershell
$ConfirmPreference = "stop"
cls

# Module SCCM
Import-module ($Env:SMS_ADMIN_UI_PATH.Substring(0,$Env:SMS_ADMIN_UI_PATH.Length-5) + '\ConfigurationManager.psd1')

#############
# Varaibles #
#############
$ListPatchObject = Get-Content "$env:temp\ListPatchObject.txt"


# Get SiteCode
$SiteCode = Get-PSDrive -PSProvider CMSITE
Set-location $SiteCode":"

#########################
# Create Defaut Folders #
#########################
# Application
foreach ($PathObject in $ListPatchObject){
    try{
    
        New-Item -Name $PathObject -Path $($SiteCode.Name+":\Application\")
    }catch{
        $Error[0].Exception
    }
}
````
[<img src="https://i.imgur.com/13pLlhN.png">](https://i.imgur.com/13pLlhN.png)

---

## Foreach + subFolder 
````csv
Name;Root
test;:\Application\
test2;:\Application\test
````
````powershell
# Switch
param([parameter(Mandatory=$true)] [String]$FileCSV)

# Module SCCM
Import-module ($Env:SMS_ADMIN_UI_PATH.Substring(0,$Env:SMS_ADMIN_UI_PATH.Length-5) + '\ConfigurationManager.psd1')

#############
# Variables #
#############
$ErrorActionPreference = "stop"
cls
# List
$ListPathObject = Import-Csv $FileCSV -Delimiter ";" #Put full path for Switch *.csv because you're in Path: <Site>:\
# Get SiteCode
$SiteCode = Get-PSDrive -PSProvider CMSITE
Set-location $SiteCode":"

Foreach($PathObject in $ListPathObject){
    Try{
        #Path Object Name 
        $PathObjectName = $PathObject.Name
        #Path Object Root (e.g: DeviceCollection, Application, etc)
        $PathObjectRoot = $PathObject.Root
        New-Item -Name $PathObjectName -Path $($SiteCode.Name+$PathObjectRoot)
    }
    Catch{
        $Error[0].Exception
    }
}
````
[<img src="https://i.imgur.com/7JGAhi2.png">](https://i.imgur.com/7JGAhi2.png)
