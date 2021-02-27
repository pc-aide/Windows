# SCCM 2002

## Acronym
* ADK - Assessment & Deployment Kit

## Prefix
* PR - Primary 

## URL
* Microsoft-Endpoint-configuration-Manager
  * Eval: 180d
* URL: https://www.microsoft.com/en-us/evalcenter/evaluate-microsoft-endpoint-configuration-manager
  * DDL: https://download.microsoft.com/download/e/0/a/e0a2dd5e-2b96-47e7-9022-3030f8a1807b/MEM_Configmgr_2002.exe
* [ADK](https://docs.microsoft.com/en-us/windows-hardware/get-started/adk-install)
* [user-rights-assignment](https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/user-rights-assignment)
  
## Prereq
* OS ver ≥ 2016 
* RAM ≥ 16 Go
* Size ≥ 130 Go

---

## Steps
### 01 - ADK 2004
````powershell
Start-Process .\adksetup.exe `
-ArgumentList "/features OptionId.DeploymentTools OptionId.ImagingAndConfigurationDesigner OptionId.ICDConfigurationDesigner OptionId.UserStateMigrationTool OptionId.WindowsPerformanceToolkit /q"
````
[<img src="https://i.ibb.co/vmPNyDx/image.png">](https://i.ibb.co/vmPNyDx/image.png)
[<img src="https://i.ibb.co/rx97Vmf/image.png">](https://i.ibb.co/rx97Vmf/image.png)

* log: 
````log
type '$Env:temp\adk\C:\Users\admin\AppData\Local\Temp\adk\Windows Assessment and Deployment Kit___Windows_10_20201225170513.log'
````
[<img src="https://i.ibb.co/C1hDV7Y/image.png">](https://i.ibb.co/C1hDV7Y/image.png)

---

### 02 - Windows Pe add-on for the ADK
````powershell
Start-Process .\adkwinpesetup.exe `
-ArgumentList "/features OptionId.WindowsPreinstallationEnvironment /q /log $env:temp\adkWinPeSetup.log"
````
* Time: ~5m & 52sec

[<img src="https://i.ibb.co/ctV97GL/image.png">](https://i.ibb.co/ctV97GL/image.png)
[<img src="https://i.ibb.co/wKJHxxH/image.png">](https://i.ibb.co/wKJHxxH/image.png)

---

### 03 - ADSI Edit
* Optional: 
````powershell
add-windowsFeature rsat-ad-tools
````
[<img src="https://i.ibb.co/BsLCYr9/image.png">](https://i.ibb.co/BsLCYr9/image.png)

* adsiEdit.msc\Connect to... - default 
* Go to `CN=System`\Object...

[<img src="https://i.ibb.co/5RGWsZm/image.png">](https://i.ibb.co/5RGWsZm/image.png)

* Create object:
  * Name:container
  * value: System Management
  * **Warning**: Respect the case sensitive here
  
[<img src="https://i.ibb.co/DVMfKyx/image.png">](https://i.ibb.co/DVMfKyx/image.png)

* Object user
  * CN=System Management Properties
    * Onglet: Security\Add...
      * Name: admin
      * Permissions for admin: Full control
  
  
[<img src="https://i.ibb.co/k0WRdFD/image.png">](https://i.ibb.co/k0WRdFD/image.png)
[<img src="https://i.ibb.co/VNQh451/image.png">](https://i.ibb.co/VNQh451/image.png)
[<img src="https://i.ibb.co/Jp5fzH9/image.png">](https://i.ibb.co/Jp5fzH9/image.png)

* Object Computer$
  * CN=System Management Properties
  * Onglet: Security\Add... - Object type...\CheckBox Computers
  * Permissions for SCCM01: full control
  * For Special permissions...: Advanced
    * Principal: SCCM01$
    * Access: - add
    * Permissions: Full control
    * Applies to: this object & all descendant objects
  
[<img src="https://i.ibb.co/NZrYpNR/image.png">](https://i.ibb.co/NZrYpNR/image.png)
[<img src="https://i.ibb.co/zRvprVn/image.png">](https://i.ibb.co/zRvprVn/image.png)
[<img src="https://i.ibb.co/P4X3zZ8/image.png">](https://i.ibb.co/P4X3zZ8/image.png)
[<img src="https://i.ibb.co/QnDKF8Q/image.png">](https://i.ibb.co/QnDKF8Q/image.png)
[<img src="https://i.ibb.co/sHV38vX/image.png">](https://i.ibb.co/sHV38vX/image.png)

---

### 04 - Extend AD Scheme
* Unzip `MEM_Configmgr_202.exe`

[<img src="https://i.ibb.co/PD3PVy9/image.png">](https://i.ibb.co/PD3PVy9/image.png)

* `Start-process c:\sc_configmgr_scep_1702\smsSetup\bin\x64\extadsch.exe`

[<img src="https://i.ibb.co/hdx37j2/image.png">](https://i.ibb.co/hdx37j2/image.png)

* log:
````batch
cmd /k type c:\ExtADSch.log
````
[<img src="https://i.ibb.co/3hCNgxw/image.png">](https://i.ibb.co/3hCNgxw/image.png)

---

### 05 - SQL Server 2016 SP2
* Check Up priv:
````powershell
whoami /priv | findstr /i "seBackupPrivilege sedebugPrivilege seSecurityPrivilege"
````
[<img src="https://i.ibb.co/7J9jd9s/image.png">](https://i.ibb.co/7J9jd9s/image.png)

* User-rights-assignment (GPO):

|n|Group Policy setting|Constant Name|Path|
|-|--------------------|-------------|-----|
|1|Manage auditing & security log|SeSecurityPrivilege|Computer Configuration\Preferences\Control Panel Setting\Local Users and Groups|

* Setup.exe
* PendingReboot: no
* ConfigurationFile=[cfg.ini](https://github.com/pc-aide/Ini/blob/master/Cfg_MS_SQL2016.md)
````powershell
SETUP.EXE /configurationFile=ConfigurationFile.ini /AGTSVCPASSWORD="pwd" /sqlSvcPassword="pwd" /RSSVCPASSWORD="pwd"
````
[<img src="https://i.imgur.com/2jCGWws.png">](https://i.imgur.com/2jCGWws.png)
[<img src="https://i.imgur.com/atADmJI.png">](https://i.imgur.com/atADmJI.png)
* log
````log
type "C:\Program Files\Microsoft SQL Server\130\Setup Bootstrap\Log\Summary.txt" | findstr /i "exit code"
````
[<img src="https://i.imgur.com/X87TVK2.png">](https://i.imgur.com/X87TVK2.png)
[<img src="https://i.imgur.com/IxDfZEb.png">](https://i.imgur.com/IxDfZEb.png)

---

### 06 - SSMS 18.0
* SSMS = MS SQL Server Management Studio (Client SQL)
* PendingReboot: yes
````powershell
Start-Process .\SSMS-Setup-ENU.exe -ArgumentList "/install /quiet /noRestart /log $env:\temp\InstallSSM18.0.log"
````
[<img src="https://i.imgur.com/RPxYpYs.png">](https://i.imgur.com/RPxYpYs.png)
[<img src="https://i.imgur.com/yLFDWca.png">](https://i.imgur.com/yLFDWca.png)
[<img src="https://i.imgur.com/TIHaiRO.png">](https://i.imgur.com/TIHaiRO.png)

* open `Microsoft SQL Server Management Studio 18`

[<img src="https://i.imgur.com/L4DDfaO.png">](https://i.imgur.com/L4DDfaO.png)
[<img src="https://i.imgur.com/AES3n3F.png">](https://i.imgur.com/AES3n3F.png)

* SCCM01 (Properties)

[<img src="https://i.imgur.com/CB6v0QI.png">](https://i.imgur.com/CB6v0QI.png)

* Memory
  * Min: 8Go
  * Max: 16Go
* Reboot

[<img src="https://i.imgur.com/M3ANYo2.png">](https://i.imgur.com/M3ANYo2.png)

---

### 07 - Prereq SCCM 2002.ps1
````powershell
#Time : ~1min 40sec

#Web Server
Add-WindowsFeature web-server,web-webServer, web-common-http, `
    web-default-doc, web-dir-browsing, web-http-errors, web-static-content, `
    web-health, web-http-logging, web-performance, web-stat-compression, `
    web-dyn-compression, web-security, web-filtering, web-windows-auth, `
    web-app-dev, web-net-ext45, web-asp-net45, web-isapi-ext, web-isapi-filter, `
    web-mgmt-tools, web-mgmt-console, web-mgmt-compat, web-wmi, web-metabase
 
#WSUS (Content_dir: \progra~1\Update Services)
Add-WindowsFeature updateServices -IncludeManagementTools
 
#Other things
Add-WindowsFeature net-framework-45-aspnet,NET-Framework-Features, net-wcf-http-activation45, `
    windows-internal-database
 
#other thing WEB
Add-WindowsFeature web-http-redirect, web-log-libraries, web-request-monitor, `
    web-http-tracing
 
#BITS
Add-WindowsFeature bits, bits-iis-ext
 
#Remote diff. compression + RSAT
Add-WindowsFeature rdc, rsat-feature-tools, rsat-bits-server
````
[<img src="https://i.imgur.com/tI6MImZ.png">](https://i.imgur.com/tI6MImZ.png)

---

### 08 SCCM2002
* MEM_ConfigMgr_2002\splash.hta

[<img src="https://i.imgur.com/AqA34aY.png">](https://i.imgur.com/AqA34aY.png)

* Install

[<img src="https://i.imgur.com/N8UkNXC.png">](https://i.imgur.com/N8UkNXC.png)

* Next

[<img src="https://i.imgur.com/Drzy2Hd.png">](https://i.imgur.com/Drzy2Hd.png)

* RadioButton: Install a Configuration Manager primary site

[<img src="https://i.imgur.com/6YzLae0.png">](https://i.imgur.com/6YzLae0.png)

* RadioButton: Install the evaluation edition of this product

[<img src="https://i.imgur.com/GmVoGUs.png">](https://i.imgur.com/GmVoGUs.png)

* CheckBox: I accept ...

[<img src="https://i.imgur.com/ZACorzw.png">](https://i.imgur.com/ZACorzw.png)

* RadioButton: Download required files
  * Path: e:\SCCM-PreReq - Folder must exist
  
[<img src="https://i.imgur.com/F4ZPL6x.png">](https://i.imgur.com/F4ZPL6x.png)
[<img src="https://i.imgur.com/VIHp0I5.png">](https://i.imgur.com/VIHp0I5.png)

* Server Languager Selection
  * English
  * French
* Client Language Selection
  * idem
  
[<img src="https://i.imgur.com/4R0LrCo.png">](https://i.imgur.com/4R0LrCo.png)
[<img src="https://i.imgur.com/GzCByxg.png">](https://i.imgur.com/GzCByxg.png)

* Site & Installation Settings
  * Site code: PR1 
  * Site name: GOLOVA-RU
  * Installation folder: E:\Microsoft Configuration Manager\
  
[<img src="https://i.imgur.com/4FpSPCf.png">](https://i.imgur.com/4FpSPCf.png)

* RadioButton: Install the primary site as a stand-alone site

[<img src="https://i.imgur.com/a4vbSn3.png">](https://i.imgur.com/a4vbSn3.png)

* Database Information
  * SQL Server name (FQDN)
  * Database name
  * Service Broker Port: 4022
* Next

[<img src="https://i.imgur.com/xH5ZhVJ.png">](https://i.imgur.com/xH5ZhVJ.png)

* Path SQL Server **data** & **log**

[<img src="https://i.imgur.com/tL658uD.png">](https://i.imgur.com/tL658uD.png)

* SMS Provider Settings
  * SMS Provider (FQDN)
  
[<img src="https://i.imgur.com/ho59tFn.png">](https://i.imgur.com/ho59tFn.png)

* RadioButton: Configure the communication method on each site system role

[<img src="https://i.imgur.com/YX72wux.png">](https://i.imgur.com/YX72wux.png)

* Site System Role
  * CheckBox: Install a management point
    * FQDN
    * Client connection: HTTP
  * CheckBox: Install a distribution point
    * FQDN
    * Client connection: HTTP
    
[<img src="https://i.imgur.com/RV8Y3yJ.png">](https://i.imgur.com/RV8Y3yJ.png)

* Diagnostic & Usage Data
  * Next
  
[<img src="https://i.imgur.com/GrMt2XY.png">](https://i.imgur.com/GrMt2XY.png)

* Service Connectin Point Setup
  * RadioButton: Skip this for now
  
[<img src="https://i.imgur.com/zeqy6n6.png">](https://i.imgur.com/zeqy6n6.png)

* Settings Summary

[<img src="https://i.imgur.com/w8o3aDq.png">](https://i.imgur.com/w8o3aDq.png)

* Prerequisite Check

[<img src="https://i.imgur.com/WqbaSro.png">](https://i.imgur.com/WqbaSro.png)
  
* Install
  * Time: ~32m
  * NB: ~15m on Disk -> Sabrent SB-ROCKET-NVMe4-2 To Rocket PCIe 4.0 M.2 2280 SSD

[<img src="https://i.imgur.com/Fz4hk43.png">](https://i.imgur.com/Fz4hk43.png)

---

## SCCM Console
[<img src="https://i.imgur.com/lScw4T5.png">](https://i.imgur.com/lScw4T5.png)
