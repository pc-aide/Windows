:: RunAsAdmin this script
:: DL: https://docs.microsoft.com/en-us/windows-hardware/get-started/adk-install
::
:: O/P: https://i.imgur.com/mIO6peD.png
 
::Important when save appv file (package)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1
 
::Optional - Stop service windows search
sc config "wsearch" start= disabled
sc stop "wsearch"
