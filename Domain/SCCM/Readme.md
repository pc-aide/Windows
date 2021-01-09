# SCCM

## Acronym
* SCCM --Server Configuration Console Manager

## Prerequisites
1) Microsoft SQL Server
2) System Mgmt Container 
3) Add-WindowsFeature SCCM 2002.ps1
4) [Windows ADK](https://docs.microsoft.com/en-us/windows-hardware/get-started/adk-install)
5) Extend AD Scheme


### Microsoft SQL Server
#### Microsoft SQL Management Studio 
* Memory (MB)
  * Min: 8192
  * Max: 16000
   [<img src="https://i.imgur.com/lc9uc6J.png">](https://i.imgur.com/lc9uc6J.png)
* Sql Server Configuration Manager
  * SQL Server Services\SQL Server(\<SQLNameInstance\>)
  [<img src="https://i.imgur.com/6RjOCh6.png">](https://i.imgur.com/6RjOCh6.png)

### System Mgmt Contrainer
* adsiEdit.msc\CN=System\New Object...

[<img src="https://i.imgur.com/gMLmLlo.png">](https://i.imgur.com/gMLmLlo.png)
* Create Object\container

[<img src="https://i.imgur.com/Z7aXvmJ.png">](https://i.imgur.com/Z7aXvmJ.png)
* Value : System Management

[<img src="https://i.imgur.com/HAAHRmJ.png">](https://i.imgur.com/HAAHRmJ.png)
* CN=System Management Properties\Security\Add... with full control
  * admin
  * \<your object computer\>
    * [<img src="https://i.imgur.com/Lr66csS.png">](https://i.imgur.com/Lr66csS.png)
   * User + computer -> Applies to : This object and all descendant objects
     * [<img src="https://i.imgur.com/Sj3xLpA.png">](https://i.imgur.com/Sj3xLpA.png)

### Windows ADK
* Windows ADK
* Windows PE add-on
````PowerShell
#Time : ~7min
Start-Process .\adkwinpesetup.exe -ArgumentList "/Features + /q"
````    
````PowerShell
Start-Process .\adksetup.exe -ArgumentList "/Features OptionID.DeploymentTools OptionID.UserStateMigrationTool /q"
````
[<img src="https://i.imgur.com/I3riIZS.png">](https://i.imgur.com/I3riIZS.png)
[<img src="https://i.imgur.com/UakNuKW.png">](https://i.imgur.com/UakNuKW.png)

### Extend AD schema
* [Microsoft Endpoint configuration manager](https://www.microsoft.com/en-us/evalcenter/evaluate-microsoft-endpoint-configuration-manager-technical-preview)
  * [<img src="https://i.imgur.com/vwmnQDh.png">](https://i.imgur.com/vwmnQDh.png)
* Extadsch.exe
````PowerShell
Start-Process "c:\MEM_Configmgr_2002\SMSSETUP\BIN\X64\extadsch.exe" -NoNewWindow
````
   * [<img src="https://i.imgur.com/BZlgaPv.png">](https://i.imgur.com/BZlgaPv.png)
````PowerShell
get-content c:\extAdsch.log -tail 7
````
  * [<img src="https://i.imgur.com/6HB2fQT.png">](https://i.imgur.com/6HB2fQT.png)
