# VMWare.PowerCLI

## Doc
* https://nutzandbolts.wordpress.com/2013/02/14/vmwares-online-depot-for-vmware-image-builder/

## Install
````PowerShell
#https://imgur.com/qGwKGP3
find-module -Name VMware.PowerCLI
````

````PowerShell
#https://imgur.com/4GqM6KB (Size ~96MB | Compress yes)
Install-Module -Name VMware-PowerCLI -Scope Currentuser
````

## [cmdlet *esxi*](https://imgur.com/9jG802n)
* Apply-EsxImageProfile
* Get-Esx
* Add-EsxSoftwareDepot
* Add-EsxSoftwarePackage
* Compare-EsxImageProfile
* Export-EsxImageProfile
* Get-EsxCli
* Get-EsxImageProfile
* Get-EsxSoftwareDepot
* Get-EsxSoftwarePakcage
* Get-EsxTop
* New-EsxImageProfile
* Remove-EsxImageProfile
* Remove-EsxSoftwareDepot
* Remove-EsxSoftwarePackage
* Set-EsxImageProfile
* Set-EsxImageProfileAssociation

## New Files
[InstallDir](https://imgur.com/5cE8N1t)
* c:\users\\%UserName%\Documents\WindowsPowerShell\Modules\VMware.PowerCLI\12.0.0.15947286\
  * EULA.txt
  * PSGetModulesInfo.xml
  * VMware.PowerCLI.cat
  * VMware.PowerCLI.ps1
  * VMware.PowerCLI.psd1

## E.g
* Lastes version : 12.0.0
* Add-EsxSoftwareDepot https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml
* Get-PowerCLICommunity #open : https://communities.vmware.com/community/vmtn/automationtools/powercli
* Get-EsxImageProfile
  * [get-EsxImageProfile -Name "ESXi-7.0bs-16321839-standard" | fl * -force](https://imgur.com/dYY54WW)
