# Run (Startu-Up)

## e.g
### 01 - Script elevated
````powershell
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]
"Restart-And-Resume"="C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -noExit start powershell C:\Temp\Office365.ps1 -verb runAs"
````
