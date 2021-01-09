<#
----------------------------------------------------------------
  ms-FVE-* :
    KeyPackage
    RecoveryGuid
    RecoveryInformation
    RecoveryPassword
    VolumeGuid

----------------------------------------------------------------
#>

#https://imgur.com/dY0D30c
Get-ADObject -SearchBase ((GET-ADRootDSE).SchemaNamingContext) -Filter {Name -like 'ms-FVE-*'}
