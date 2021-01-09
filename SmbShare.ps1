<#
----------------------------------------------------------
  Syntax:
    New-SmbShare -Name <String> -Path <Path> -FullAccess [Domain\<Users | Group>]
    
  NB:
    -ContinuoulyAvailable parameter, it will automatically defaults to $true
----------------------------------------------------------
#>

#
New-SMBShare –Name “Shared” –Path “C:\Shared” `
 –FullAccess domain\admingroup  ` 
 -ReadAccess “domain\domain users”

#
Remove-SmbShare -Name Fic01 -Force

#
Get-SmbShareAccess depot | fl *
