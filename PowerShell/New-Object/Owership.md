# Owernership

## Doc
* [changing-ownership-of-file-or-folder-using-powershell](https://learn-powershell.net/2014/06/24/changing-ownership-of-file-or-folder-using-powershell/)

## cmd
* takown

## E.g.
````PowerShell
$ACL = Get-ACL .\smithb
$Group = New-Object System.Security.Principal.NTAccount("Builtin", "Administrators")
$ACL.SetOwner($Group)
Set-Acl -Path .\smithb\profile.v2 -AclObject $ACL
````
