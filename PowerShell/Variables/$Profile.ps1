<#
------------------------------------------------------------
  6 different PS Profiles: (4 PS & 2 ISE)
    All Users, Current Host - console -> $PsHome\Microsoft.PowerShell_profile.ps1
    All Users, All Hosts              -> $PsHome\Profiles.ps1
    
    All users, Current Host - ISE     -> $PsHome\Microsoft.PowerShellISE_profile.ps1
------------------------------------------------------------
#>

#Default path who not exist ()
$Profile

#https://imgur.com/LZ3SYhV
$Profile | Get-Member -MemberType NoteProperty

#https://imgur.com/mgADC2g
#4 Profiles (AllUserAllHosts...CurrentUserCurrentHost)
$Profile | fl * -Force

#https://imgur.com/rq7F3z4
$Profile.AllUserAllHosts

#Create a new profile
New-Item $Profile.CurrentUserAllHosts -ItemType file -Force
