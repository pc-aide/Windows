::&----------------------------------------------------------------------------------------------------------------------
::& Elevated Y
::& Available PowerShell: get-itemproperty -path ‘hklm:\software\policies\microsoft\windows\currentVersion\internet settings\zones\3’ | findstr /i 210*
::& Desc.: zones\3\* <-- 50 items to add to block Hyperlinks (https://imgur.com/5I73cjl)
::& Tested on: cmd /c start "progra~1\internet explorer\iexplore.exe" journaldequebec.com/rss.xml
::&■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
::& Internet Explorer security zones registry entries for advanced users: https://support.microsoft.com/en-ca/help/182569/internet-explorer-security-zones-registry-entries-for-advanced-users
::&
::& Group policy management -- webpage dialog (https://imgur.com/a1ax2Vz)
::& GUI -> control inetcpl.cpl,,1 -> custom level ... -> Miscellaneous\Web sites ... (https://imgur.com/Vo7GrAm)
::& Zone 3 -> Internet Zone
::& 2101 (value)  -> Miscellaneous: Web sites in less privileged web content zone can navigate into this zone **
::& reg_dword (type)
::& Warning: if modify the registry a value for another, we need restart IE for the new value
::& 3 disabled (value)
::& 2 enable (value) <- Enable (idem value 3) <- https://imgur.com/RkgXxpO
::& 1 prompt (value) <- prompt with pop-up: the current webpage is trying to open a site <- https://imgur.com/GlOg67X
::&
::& Tested: if the key don't exist: windows 1809 OK (https://imgur.com/5cj9szF)
::&■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
::&----------------------------------------------------------------------------------------------------------------------
 
::https://imgur.com/Ke4Z0lh
reg add "hklm\software\policies\microsoft\windows\currentVersion\internet settings\zones\3" /v 2101 /t reg_dword /d 3 /f && "c:\progra~1\internet explorer\iexplore.exe" journaldequebec.com/rss.xml
 
::Delete (https://imgur.com/Na0AIEp)
reg delete "hklm\software\policies\microsoft\windows\currentVersion\internet settings\zones\3" /v 2101 /f && "c:\progra~1\internet explorer\iexplore.exe" journaldequebec.com/rss.xml
