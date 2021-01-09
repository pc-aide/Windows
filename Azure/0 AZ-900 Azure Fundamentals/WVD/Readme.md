# WVD
* A container with one or more host pool
  * we can put VMs or apps
* Data on the temporary disk
  * If is there a UD, so you will lose our data on VM, so used blob storage or Azure file (sync)
* It's like a VDI 
* It's a PaaS


## Acronym
* WVD - Windows Virtual Desktop
* UD - Update Domain

## Doc
* [Connect with the Windows Desktop client](https://docs.microsoft.com/en-us/azure/virtual-desktop/connect-windows-7-10)
* [Use FSLogix Group Policy Template Files](https://docs.microsoft.com/en-us/fslogix/use-group-policy-templates-ht)
* [Download and Install FSLogix](https://docs.microsoft.com/en-us/fslogix/install-ht)

## Home
[<img src="https://i.imgur.com/S9bhhdL.png">](https://i.imgur.com/S9bhhdL.png)

## Clients
* [RemoteDesktop_1.2.1272.0_x64.msi](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4D7LK)

## FSLogix
* admx & adml
  * [FSLogix_Apps_2.9.7349.30108.zip | 179.9MB](https://download.microsoft.com/download/0/3/3/0332586b-cd67-40f5-a16e-bb0bc6cfabaf/FSLogix_Apps_2.9.7349.30108.zip)

## GPO
* Install
  * admx
    * C:\Windows\PolicyDefinitions\\*.admx
  * adml
    * C:\Windows\PolicyDefinitions\en-us\\*.admx
