# Install Additional DC

## Acronym
* DC - Domain Controller

## SRC
* http://harmikbatth.com/2017/04/25/active-directory-installing-second-or-additional-domain-controller/#page-content

## Steps
1) INS feature
````powershell
Install-WindowsFeature AD-Domain-Service -IncludeManagementTools
```
[<img src="https://i.imgur.com/ngYTvLV.png">](https://i.imgur.com/ngYTvLV.png)

2) Import Module : `Import-Module ADDSDeployment`

[<img src="https://i.imgur.com/wC1UcGz.png">](https://i.imgur.com/wC1UcGz.png)

3) Install additional DC
````powershell
Install-ADDSDomainController -NoGlobalCatalog:$false -CreateDnsDelegation:$false -CriticalReplicationOnly:$false `
  -DatabasePath “C:\Windows\NTDS” -DomainName “harmikbatth.lab” -InstallDns:$true -LogPath “C:\Windows\NTDS” `
  -NoRebootOnCompletion:$false -SiteName “Default-First-Site-Name” -SysvolPath “C:\Windows\SYSVOL” -Force:$true
````
[<img src="https://i.imgur.com/9tzeSb5.png">](https://i.imgur.com/9tzeSb5.png)

4) CheckOut:
  * `Get-adForest`
  * `netdom /query fsmo`

[<img src="https://i.imgur.com/bFxSdjc.png">](https://i.imgur.com/bFxSdjc.png0)
