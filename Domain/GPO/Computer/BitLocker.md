# BitLocker

## Doc
[Store BitLocker Recovery Keys using Active Directory](https://theitbros.com/config-active-directory-store-bitlocker-recovery-keys/)

* BitLocker recovery key is a 48 (limit 64) and/or 256-bit sequence
*  BitLocker agent on user workstations

## shell
* explorer.exe shell:::{D9EF8727-CAC2-4e60-809E-86F80A666C91}
* %windir%\System32\fvenotify.exe (Icon Taskbar)

[<img src="https://i.imgur.com/dp1vd1i.png">](https://i.imgur.com/dp1vd1i.png)
[<img src="https://i.imgur.com/P3Lv2nn.png">](https://i.imgur.com/P3Lv2nn.png)

````PowerShell
#https://imgur.com/dY0D30c
Get-ADObject -SearchBase ((GET-ADRootDSE).SchemaNamingContext) -Filter {Name -like 'ms-FVE-*'}
````

## WindowsFeatures
````PowerShell
#Need Restart : yes
#https://imgur.com/fhfcmm8
Install-WindowsFeature BitLocker -IncludeAllSubFeature -IncludeManagementTools
````

````PowerShell
#BitLokcer Recovery Password Viewer
Get-WindowsFeatures rsat-feature-tools-bitlocker-bdeAducExt
````
* [<img src="https://i.imgur.com/Wuth1cMg.png">](https://i.imgur.com/Wuth1cMg.png)

## GPO
[Computer\Policies\Administrative Template...\Windows Components\BitLocker Drive Encryption\
  \Store BitLocker recovery information in Active Directory Domain Services](https://imgur.com/PRVx60a)

## Clients
```PowerShell
#https://imgur.com/a899Btz
gpupdate /force ; shutdown /r /f /t 0
````

## cmdLet
````Batch
REM Elevated : yes
REM https://imgur.com/c3vWbqx
manage-bde -status c:
````

```Batch
REM Get currrent BitLocker ID for the encrypted volume
REM https://imgur.com/PF1OcPd
manage-bde -protectors -get c:
````

````PowerShell
#https://imgur.com/EIu2L4w
Get-BitLocker c: | fl *
````

````PowerShell
#Get Recovery Password
#Elevated no
#cmdLets Active Directory 
#https://imgur.com/XBJM9v8
$ADComputer = 'E10873'

$DN = Get-ADComputer $ADComputer | Select-Object -ExpandProperty DistinguishedName

$ADobj = get-adobject -Filter {objectclass -eq 'msFVE-RecoveryInformation'} -SearchBase $DN -Properties 'msFVE-RecoveryPassword' | Select-Object Name,msFVE-RecoveryPassword

[Ordered]@{

Computer = $ADComputer

RecoveryPassword = $ADobj.'msFVE-RecoveryPassword'

Date = Get-Date -Date ($ADobj.Name ).Split('{')[0]

BitlocerKeyID = (($ADobj.Name ).Split('{')[1]).TrimEnd('}')

}
````

````PowerShell
(Get-BitLocker -MountPoint C).KeyProtector
````
[<img src="https://i.imgur.com/ds8G4Me.png">](https://i.imgur.com/ds8G4Me.png)

## BitLocker Recovery (dsa.msc)
[<img src="https://i.imgur.com/ppAUS9z.png">](https://i.imgur.com/ppAUS9z.png)

## Delegating Permissions to View BitLocker Recover Keys in AD
1) Create new group
2) Right Click on OU contains the computer\Delegate Control...
3) Chose your Users or Groups (Wizard)
4) Task to Delegate\Create a custom task to delegate (Wizard)
5) Active Directory Object Type\msFVE-RecoveryInformation objects (Wizard)
6) Permissions (Wizard)
7) Done

## Check 2 conditions (SecureBoot + Tpm)
````PowerShell
#0x1 : Enabled
cls
#Errors
$ErrorActionPreference = "Stop"

$ListPC = Get-Content "C:\Temp\ListPC.txt"

#
foreach ($PC in $ListPC){
    
    try{
        #SecureBoot
        $RegValue = reg query \\$PC\hklm\system\controlSet001\Control\SecureBoot\State\ /v "UEFISecureBootEnabled" | findstr /ri "reg_dword"
        #Remove : UEFISecureBootEnabled    REG_DWORD
        $RegValue2 = $RegValue -replace "UEFISecureBootEnabled    REG_DWORD" -replace ""
        
        #TPM
        $IsTpmEnabled = wmic /namespace:\\root\cimv2\security\MicrosoftTpm /node:$PC path win32_tpm get IsActivated_InitialValue /value 
        #Remove : IsActivated_InitialValue=
        $IsTpmEnabled2 = $IsTpmEnabled -replace "IsActivated_InitialValue=" -replace ""
        
        #O/P
        $PC + $RegValue2 + " " + $IsTpmEnabled2
    }
    #Errors
    catch{
        Write-Host $PC +  $Error[0].Exception -ForegroundColor Red
    }
}
````
[<img src="https://i.imgur.com/jf2nHyq.png">](https://i.imgur.com/jf2nHyq.png)
