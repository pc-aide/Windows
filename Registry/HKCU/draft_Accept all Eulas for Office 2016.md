# draft_Accept all Eulas for Office 2016

## e.g
### 01 - Test on Office 16.0
````powershell
[HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Common\General]
 
"shownfirstrunoptin"=dword:00000001
 
[HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\FirstRun]
 
"BootedRTM"=dword:00000001
 
[HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Registration]
#we can used this value for Office in App-V5.1 via _DeploymentConfig.xml
;
"AcceptAllEulas"=dword:00000001
````
