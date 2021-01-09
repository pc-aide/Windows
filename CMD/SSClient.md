# SSClient

## Doc
* [Command line options for Software Center](https://deploymentresearch.com/Research/Post/650/Command-line-options-for-Software-Center)
* [SCCM EXE files and RUN Commands](https://social.technet.microsoft.com/wiki/contents/articles/6565.sccm-exe-files-and-run-commands.aspx)

````list
GUI: run -> softwareCenter:

Syntax: c:\Windows\CCM\ClientUX\SCClient.exe softwarecenter:Page=param@1 param@2
param@1={AvailableSoftware, Updates, OSD, InstallationStatus, InstallationStatus, Options}
Filter Type:param@2

0=All
  1=AllMandatory
  2=AllApplicationApps
  3=MandatoryAppApplications
  4=AllUpdates
  5=MandatoryUpdates
  6=AllHighImpactTS
  7=MandatoryHighImpactTS
  8=ACSApplications

SortType:
  0=SortByNameDescending
  1=SortByNameAscending
  2=SortByDateDescending
  3=SortByDateAscending
  4=SortByPublisherDescending
  5=SortByPublisherAscending
  6=SortByStatus    
````
 
## Applications + Sort by: Status
````batch
"C:\WINDOWS\CCM\ClientUX\SCClient.exe" softwarecenter:Page=InstallationStatus FilterType=2 SortType=6
````

[<img src="https://i.imgur.com/LlnmTNd.png">](https://i.imgur.com/LlnmTNd.png) 

---

## Start Deployment (ScopeId_ : get-cmDeployment) 
````bath
"C:\WINDOWS\CCM\ClientUX\SCClient.exe" softwarecenter:SoftwareID=ScopeId_6DBD4E39-1B15-4F1D-9264-E3BAFE97B0A3/Application_337e2afd-0ec2-4494-bb9e-d8787d7fc627
````

---

## Overview
| Function                                                              | SCCM Version         | Command                                                                       |
|-----------------------------------------------------------------------|----------------------|-------------------------------------------------------------------------------|
| Configuration Manager Client Properties                               | SCCM 2012 or SCCM CB | C:\Windows\CCM\SMSCFGRC.cpl                                                   |
| SCCM (ConfigMgr) Evaluation                                           | SCCM 2012 or SCCM CB | %windir%\CCM\CcmEval.exe                                                      |
| SCCM ClientConsoles                                                   | SCCM 2012 or SCCM CB | %windir%\CCM\SCClient.exe                                                     |
| SMS Agent Host Restart (x64 & x86)                                    | SCCM 2007            | %windir%\System32\CCM\CcmRestart.exe %windir%\SysWOW64\CCM\CcmRestart.exe     |
| SCCM (ConfigMgr) Client Repair - Command Line/ VB script / Powershell | SCCM 2007            | %windir%\System32\CCM\ccmrepair.exe %windir%\SysWOW64\CCM\ccmrepair.exe       |
| SCCM (ConfigMgr) show notification                                    | SCCM 2012 or SCCM CB | %windir%\CCM\SCToastNotification.exe "Title" "Message"                        |
| Client ConfigMgr console Properties                                   | SCCM 2007            | %windir%\System32\CCM\SMSCliUI.exe %windir%\SysWOW64\CCM\SMSCliUI.exe         |
| Run Advertised Program (x64 & x86)                                    | SCCM 2007            | %windir%\System32\CCM\SMSRAP.CPL %windir%\SysWOW64\CCM\SMSRAP.CPL             |
| Task Sequence Progress Bar (x64 & x86)                                | SCCM 2007            | %windir%\System32\CCM\TsProgressUI.exe %windir%\SysWOW64\CCM\TsProgressUI.exe |
