<#
------------------------------------------------------------------------
https://support.microsoft.com/en-ca/help/243330/well-known-security-identifiers-in-windows-operating-systems#:~:text=A%20group%20that%20includes%20all%20users%20whose%20identities%20were%20authenticated,controlled%20by%20the%20operating%20system.&text=This%20SID%20is%20reserved%20for%20future%20use.&text=A%20user%20account%20for%20the%20system%20administrator.

Capability SIDs :
  HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SecurityManager\CapabilityClasses\AllCachedCapabilities
  All Capability SIDs begin at "S-1-15-3."


  Syntax: 
    get-adGroup <Name | SID>
    
 Well-known Name:  
  "domain admins"
  "domain users"

 Well-known SID:  
  s-1-5-32-544            -Administrators (A built-in group. After the initial installation of the operating
                          system, the only member of the group is the Administrator account. When a computer
                          joins a domain, the Domain Admins group is added to the Administrators group. When
                          a server becomes a domain controller, the Enterprise Admins group also is added to
                          the Administrators group.)
  
  s-1-5-32-545            -Users (A built-in group. After the initial installation of the operating
                          system, the only member is the Authenticated Users group. When a computer
                          joins a domain, the Domain Users group is added to the Users group on the computer.)
  
  
  S-1-5-21-<domain>-512   -Domain Admins
  S-1-5-21-<domain>-513   -Domain Users
  
  s-1-5-32-544            -Administrators (A built-in group. After the initial installation of
                          the operating system, the only member of the group is the Administrator
                          account. When a computer joins a domain, the Domain Admins group is added
                          to the Administrators group. When a server becomes a domain controller,
                          the Enterprise Admins group also is added to the Administrators group.)
                          
  s-1-5-32-555            -Remote Desktop Users (An alias. Members in this group are granted the right to log on remotely.)
  
  s-1-5-32-575            -Builtin\RDS\ Remote Access Server (A built-in local group. Servers in this group enable users
                          of RemoteApp programs and personal virtual desktops access to these resources. In
                          Internet-facing deployments, these servers are typically deployed in an edge network.
                          This group needs to be populated on servers running RD Connection Broker.
                          RD Gateway servers and RD Web Access servers used in the deployment need to be in this group.)
------------------------------------------------------------------------
#>

#Well-known Name
get-adGroup "domain admins"

#Well-known SID
get-adGroup s-1-5-32-580
