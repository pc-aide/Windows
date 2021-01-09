<#
-------------------------------------------------------------------------------------------------------------------------
  SRC -> https://www.itprotoday.com/windows-8/powershell-create-domains
 
  O/P -> https://imgur.com/a/nM9j61r
-------------------------------------------------------------------------------------------------------------------------
#>

#ADLDS -> Active Directory Lighweight Directory Services
Import-Module "Servermanager" # Add-WindowsFeature, no include by default
Add-WindowsFeature AD-Domain-Services, adlds -IncludeManagementTools
 
#To avoir underscore - used prefix if we want to use a root domain
$netBiosname = 'PC-Aide'
$domainName = 'PC-Aide.ca'
$NTDSPath = 'c:\ntds'
$NTDSLogPath = 'c:\ntdslogs'
$SYSVOLPath = 'c:\sysvol'
 
#(`)backtick multi-line command for powershell_ise
$SafePassPlain = 'Pa55word'
$SafePass = ConvertTo-SecureString -string $SafePassPlain `
    -AsPlainText -force
 
#Need reboot after that
Install-ADDSForest -DomainName $domainName -DomainNetBIOSName $netBiosname `
    -SafemodeAdministratorPassword $SafePass -SkipAutoConfigureDNS -SkipPreChecks `
    -SYSVOLPath $SysvolPath -DatabasePath $NTDSPath -LogPath $NTDSLogpath `
    -Force
