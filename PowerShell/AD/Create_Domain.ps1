<#
-------------------------------------------------------------------------------------------------------------------------
SRC -> https://www.itprotoday.com/windows-8/powershell-create-domains
Module: ServerManager
 
O/P -> https://imgur.com/a/nM9j61r
-------------------------------------------------------------------------------------------------------------------------
#>
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
