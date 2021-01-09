<#
-------------------------------------------------------------------------------------------------------------------------
    SRC: https://support.microsoft.com/en-ca/help/182569/internet-explorer-security-zones-registry-entries-for-advanced-users
    Doc.MS:
    Manual: https://ss64.com/ps
    Help: get-help <cmdlet> -online
 
    Elevated: Y
 
    PowerShell ver. 3
 
    GUI:  control inetcpl.cpl,,1 -> control inetcpl.cpl,,1 -> custom level ... -> Miscellaneous\Web sites ...
 
    O/P: https://imgur.com/0hUAdlH
-------------------------------------------------------------------------------------------------------------------------
◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼
    mp4:
◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼
#>
 
#Status (default from GPO)
Get-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3' `
    -Name 2101
 
#Disabled (allow hyperlinks RSS in IE)
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3' `
    -Name 2101 -Value 0 ; Start-Process https://journaldequebec.com/rss.xml
 
#Enabled (block hyperlinks RSS in IE)
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3' `
    -Name 2101 -Value 3 ; Start-Process https://journaldequebec.com/rss.xml
 
#Pop-up each/hyperlinks (Security Warning:
# - The current webpage is trying to open a site onte internet. Do you want to allow this ?)
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3' `
    -Name 2101 -Value 1 ; Start-Process https://journaldequebec.com/rss.xml
