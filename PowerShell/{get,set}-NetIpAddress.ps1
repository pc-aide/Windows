<#
-------------------------------------------------------------------------
  Doc. MS:
  https://docs.microsoft.com/en-us/powershell/module/nettcpip/set-netipaddress?view=win10-ps
  https://docs.microsoft.com/en-us/powershell/module/nettcpip/new-netipaddress?view=win10-ps
  https://docs.microsoft.com/en-us/powershell/module/nettcpip/remove-netipaddress?view=win10-ps
  
 Set-NetIPAddress modifies IP address configuration properties of an existing IP address
 
 #####
 Set #
 #####
  args:
 
 ########
 Remove #
 ########
  args:
    confirm: https://imgur.com/KB4r0to
-------------------------------------------------------------------------
#>

#https://imgur.com/bT99dwS
get-netipAddress -interfaceAlias ethernet0

#https://imgur.com/tDLiAmx
#Warning lost DNS with DHCP: no (static)
New-NetIPAddress -InterfaceAlias ethernet0 -IPAddress 10.56.0.102 -PrefixLenght 24 -DefaultGateway

#Delete if we have 2 IP addr (https://imgur.com/kFhHdwI)
Remove-NetIPAddress -IPAddress 192.168.0.1
