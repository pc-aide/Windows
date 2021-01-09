# LAPS

## Acronym
* LAPS : Local Administrator Password Solution
* UI : User Interface

## URL
[Download LAPS](https://www.microsoft.com/en-ca/download/details.aspx?id=46899)

## File reference
* Program.UI
   * %ProgramFiles%\LAPS
       * AdmPwd.UI.exe
       * AdmPwd.Utils.config - missing or (CSE\AdmPwd.dll)
       * AdmPwd.Utils.dll
* cmdlet PS
   * %Windir%\System32\WindowsPowerShell\v1.0\Modules\AdmPwd.PS
       * En-US\AdmPwd.PS.dll-Help.xml
       * AdmPwd.PS.dll
       * AdmPwd.PS.format.ps1xml
       * AdmPwd.PS.psd1
       * AdmPwd.Utils.dll
* GPO
   * %Windir%\PolicyDefinitions\
      * AdmPwd.admx

## Install
### Setup
#### cmdlet PS
* start-process msiExec.exe -argumentList "/i LAPS.x64.msi /q"

#### GUI
* LAPS6.2.0.0.x64.msi

[<img src="https://i.imgur.com/rAFwLgV.png">](https://i.imgur.com/rAFwLgV.png)

* Managment Tools (for SRV)

[<img src="https://i.imgur.com/Tz4wv1g.png">](https://i.imgur.com/Tz4wv1g.png)

* Register *.dll
    * regsvr32.exe .\AdmPwd.dll

[<img src="https://i.imgur.com/WXtGjSX.png">](https://i.imgur.com/WXtGjSX.png)

### cmdlet PS
````PowerShell
#From your SRV
Import-Module admpwd.ps
````
[<img src="https://i.imgur.com/048GVNh.png">](https://i.imgur.com/048GVNh.png)
````PowerShell
#Extend the schemer
Update-admPwdADSchema
````
[<img src="https://i.imgur.com/Eh8OFYz.png">](https://i.imgur.com/Eh8OFYz.png)
````PowerShell
#Delegate your OU
Set-AdmPwdComputerSelfPermission -OrgUnit 'OUName'
````
[<img src="https://i.imgur.com/9fyOQx0.png">](https://i.imgur.com/9fyOQx0.png)
````PowerShell
Find-AdmPwdExtendedRights -Identity 'OUName'
````
[<img src="https://i.imgur.com/3ayFw6p.png">](https://i.imgur.com/3ayFw6p.png)
````PowerShell
Set-AdmPwdReadPasswordPermission -OrgUnit 'OUName' -AllowedPrincipales NetBiosName\GroupName
````
[<img src="https://i.imgur.com/Km1rcFM.png">](https://i.imgur.com/Km1rcFM.png)

### GPO


### LAPS UI
[<img src="https://i.imgur.com/CtqrXR4.png">](https://i.imgur.com/CtqrXR4.png)

### LAPS cmdlet PS
````PowerShell
get-adcomputer $env:ComputerName -properties | findstr /i admPw
````
[<img src="https://i.imgur.com/8KrXLmc.png">](https://i.imgur.com/8KrXLmc.png)
