# Create_Domain

## SRC
* https://www.itprotoday.com/windows-8/powershell-create-domains

---
 
## E.g-01
````powershell
#ADLDS -> Active Directory Lighweight Directory Services
Import-Module "Servermanager" 
Add-WindowsFeature AD-Domain-Services, adlds -IncludeManagementTools
 
#To avoir underscore - used prefix if we want to use a root domain
$netBiosname = 'PC-Aide'
$domainName = 'PC-Aide.ca'
$NTDSPath = 'c:\ntds'
$NTDSLogPath = 'c:\ntdslogs'
$SYSVOLPath = 'c:\sysvol'
 
#Password
$SafePassPlain = 'Pa55word'
#hash pwd
$SafePass = ConvertTo-SecureString -string $SafePassPlain `
    -AsPlainText -force
 
#Need reboot: yes
Install-ADDSForest -DomainName $domainName -DomainNetBIOSName $netBiosname `
    -SafemodeAdministratorPassword $SafePass -SkipAutoConfigureDNS -SkipPreChecks `
    -SYSVOLPath $SysvolPath -DatabasePath $NTDSPath -LogPath $NTDSLogpath `
    -Force
````
[<img src="https://i.imgur.com/VESirJV.png">](https://i.imgur.com/VESirJV.png)

---
