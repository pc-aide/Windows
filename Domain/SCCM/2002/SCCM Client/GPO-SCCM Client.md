# GPO-SCCM Client

## Acronym
* ACL - Access Control List
* CCM - Client Configuration Manager
* MP:<Server> - Management Point
* FSP - Fallback Status Point
  
## Doc
* [CCMSetup.exe](https://docs.microsoft.com/en-us/mem/configmgr/core/clients/deploy/about-client-installation-properties)

[<img src="https://i.imgur.com/4j3j72Y.png">](https://i.imgur.com/4j3j72Y.png)

---

## Create SMB Folder

### New Folder
* `New-Item -Type Directory -name DFS1`

[<img src="https://i.imgur.com/fIkmKQ6.png">](https://i.imgur.com/fIkmKQ6.png)

---

### Create UNC
* New: `New-SmbShare -Name DFS1 -Path "C:\DFS1" -FullAccess "VINO\Domain Admins"`

[<img src="https://i.imgur.com/ZCosTe5.png">](https://i.imgur.com/ZCosTe5.png)

---

### ACL
* Check Out: `get-acl DFS1 | fl`

[<img src="https://i.imgur.com/SwVx6RB.png">](https://i.imgur.com/SwVx6RB.png)

* Folder:
  * `$acl = get-acl .\DFS1\`
* Groups Domain Admins:
  * `$AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("VINO\Domain Admins","FullControl","Allow")`
* Set:
  * `$acl.SetAccessRule($AccessRule)`

---

### SmbShareAccess
* `Grant-SmbShareAccess -Name DFS1 -AccountName "Authenticated Users"` -AccessRight -Read -Force

[<img src="https://i.imgur.com/G0UuYfP.png">](https://i.imgur.com/G0UuYfP.png)

---

## GPMC.msc
* New GPO
  * Name: GPO-COM-SCCM-Client
  * Edit it
    * Path: Computer\Policies\Software Settings\Software installation
      * New\Package: \\sccm01\sccmSclient\ccmSetup.msi
      * Select Deploy method: Assigned
    
[<img src="https://i.imgur.com/H7QvkGY.png">](https://i.imgur.com/H7QvkGY.png)

---

## ConfigMgrADMTemplates
* GPO Name: GPO-SCCM-Client
* Edit it
* Path: Computer\policies\administrative templates\add templates:
  * configMgrAssignment
  * configMgrInstallation
  * SRC: \Microsoft Configuration Manager\tools\configMgrADMTemplates\

[<img src="https://i.imgur.com/sMuf1gn.png">](https://i.imgur.com/sMuf1gn.png)
[<img src="https://i.imgur.com/ThE9WS7.png">](https://i.imgur.com/ThE9WS7.png)

* Path: Computer\policies\administrative templates\classic administrative\configuration manager\configuration manager client

[<img src="https://i.imgur.com/JicYJ4a.png">](https://i.imgur.com/JicYJ4a.png)

* Configure Configuration  Manager Site Assignment
  * Enabled
  * Assigned Site <CodeSite>

[<img src="https://i.imgur.com/if1mhhl.png">](https://i.imgur.com/if1mhhl.png)

* Configure Configuration Manager client Deployment Settings
  * Enabled
  * ccmSetup <ccmSetup.exe /mp:\<FQDN\> smsSitecode=pr1 FSP=\<FQDN\>


[<img src="https://i.imgur.com/yfNkDzP.png">](https://i.imgur.com/yfNkDzP.png)

---

## Test
* Client: Windows-1909
* gpupdate /force /scope computer
* Pending Reboot: yes

### Setup 
* process: ccmSetup.exe
* log (elevated: yes): get-content c:\windows\ccmSetup\Logs\ccmSetup.log | select -last 1

[<img src="https://i.imgur.com/oCZ67Wd.png">](https://i.imgur.com/oCZ67Wd.png)
[<img src="https://i.imgur.com/7RFflPa.png">](https://i.imgur.com/7RFflPa.png)

---

## SMSCFGRC.cpl
* Path: \windows\CCM\SMSCFGRC.cpl

[<img src="https://i.imgur.com/6hBd8AL.png">](https://i.imgur.com/6hBd8AL.png)

---

## SCCM
* The server can see the SCCM-Client
  * Client: VM01
  
[<img src="https://i.imgur.com/s6KpRe2.png">](https://i.imgur.com/s6KpRe2.png)

---

## SoftwareCenter
* Host: client (Windows1909)
* command -> run -> softwareCenter:

[<img src="https://i.imgur.com/M52Jy4l.png">](https://i.imgur.com/M52Jy4l.png)
