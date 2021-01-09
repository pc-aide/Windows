# OperatingSystem

## Doc
* https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32shutdown-method-in-class-win32-operatingsystem

## Alias
* foreach - %

## Parameters
* EnableAllPrivileges - CVE-2017-0160 | .NET Framework Remote Code Execution Vulnerability
 * Variable
 ````PowerShell
 $computername= "."
 $win32OS = get-wmiobject win32_operatingsystem -computername $computername
 $win32OS.psbase.Scope.Options.EnablePrivileges = $true
 $win32OS.win32shutdown(8)
 ````

## get-member
* Method
  * Win32Shutdown (int32 flags)
    * 0 - logoff
    * 1 - Shutdown
    * 2 - Reboot
    * 4 - Forced logoff
    * 5 - Forced Shutdown
    * 6 - Forced Reboot
    * 8 - Power Off
* Properties
  * BuildNumber
  * Caption
  * InstallDate
  * LastBootUpTime
  * MUILanguages
  * OSArchitecture
  * OSLanguage
  * RegisteredUser - admin local
  * Version
 
 ## Return Value
 * 0 - success
 * 1191 - indicates the system shutdown can't be initiated because there other users logged on to the comuter
 
 ## E.g.
 ### Properties
 ````PowerShell
 get-cimInstance win32_OperatingSystem |
 select BuildNumber,Caption,InstallDate,LastBootUpTime,MUILanguages,OSArchitecture,OSLanguage,RegisteredUser,Version
 ````
 [<img src="https://i.imgur.com/X7gh3iO.png">](https://i.imgur.com/X7gh3iO.png)
### Method
````PowerShell
#Logoff
Import-Csv "c:\temp\Computers.csv" |
%{
 (Get-WmiObject win32_OperatingSystem `
 -ComputerName $_.Computer -EnableAllPrivileges).Win32Shutdown(6) #Forced Reboot
}
````
[<img src="https://i.imgur.com/nyYfKZf.png">](https://i.imgur.com/nyYfKZf.png)
[<img src="https://i.imgur.com/Ggo8HZK.png">](https://i.imgur.com/Ggo8HZK.png)
