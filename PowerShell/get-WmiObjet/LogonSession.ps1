<#
------------------------------------------------------------------------
  GPO: Computer\Windows Settins\Security Settings\Local Policies\Security Options\
  Registry: HKLM:\Software\Microsoft\Windows NT\Current Version\WinLogon\ ValueName:CachedLogonsCount
    Data Type: REG_SZ
    Value : set to 0 to disable cached logons
------------------------------------------------------------------------
#>

#ListList Cached AD Logon Credeials 
#https://imgur.com/h7i3oRp
get-wmiObject win32_logonSession | where {$_.authenticationPackage -ne 'NTLM'}

#Delete all
#https://imgur.com/7rZyDUw
get-wmiObject win32_logonSession | where {$_.authenticationPackage -ne 'NTLM'} `
  | foreEach-Object {kList.exe purge -li ([Conver]::ToString($_.LogonID, 16))}
