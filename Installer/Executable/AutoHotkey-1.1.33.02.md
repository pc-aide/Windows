# AutoHotkey-1.1.33.02

## Doc
* [Installer Options](https://www.autohotkey.com/docs/Program.htm#install)

## Acronym
* DDL - Download Direct Link

## URL
* https://www.autohotkey.com/download/

## DDL
* https://www.autohotkey.com/download/ahk-install.exe
* https://www.autohotkey.com/download/ahk.zip
* it exist too a portable
---

## SRC
* https://github.com/Lexikos/AutoHotkey_L/

---

## License
* GPLv2

---

## Installer (*.exe)
* Auto run (like eclipse, an IDE)
* Maybe Nullsoft !?

---

## Extensions
1) *.ahk - put your code here, & after run it
  * e.g. - SCCM1702.ahk
  * hotkey -> windows + z:
````ahw
;=================================================================================================================
;PowerShell
;	Pilotes
:C:PIL::get-wmiObject win32_pnpSignedDriver | select deviceName, manufacturer, driverVersion, DriverDate, infName | convertTo-csv | clip
;	Info (PowerShell ver. > 5)
:C:INF::get-computerInfo | clip
;	Bitlocker (Elevated)
:C:BIT::get-bitlockerVolume -mountPoint c: | fl | clip
;	Package (PowerShell ver > 5)
:C:PAC::get-package | select-object version,name | clip

;=================================================================================================================
;█████████████████████████████████████████████████████████████████████████████████████████████████████████████████
; SCCM Console (Server)

;SCCM Client (side from client) 
;	control smscfgrc
;	control smsrap ()
;
;
;█████████████████████████████████████████████████████████████████████████████████████████████████████████████████
;===============================================================================================================
;GUI
{
#z::
Gui, Add, Checkbox, vPreFlightValidation, Pre-Flight-Validation
Gui, Add, Button, Default, OK
Gui, show
return

ButtonOK:
Gui, Submit

if PreFlightValidation =1
	{
	 SendEvent {Delete}
	 Send, \Monitoring\Overview\System Status\Status Message Queries
	}
	
Gui, Destroy
return
}
;===============================================================================================================
````
  
[<img src="https://i.imgur.com/WaH7r56.png">](https://i.imgur.com/WaH7r56.png)
[<img src="https://i.imgur.com/MCjR5JA.png">](https://i.imgur.com/MCjR5JA.png)

---

## Switch
* Silent:
	* `AutoHotkey110800_Install.exe /S` - /S - uppercase
* InstallDir
	* `AutoHotkey110800_Install.exe /S /D=C:\Program Files\AutoHotkey`
* Version
	* `/A32` or `/ANSI`: ANSI 32-bit.
	* `/U64` or `/x64`: Unicode 64-bit (only valid on 64-bit systems).
	* `/U32`: Unicode 32-bit.
	* e.g: `AutoHotkey110800_Install.exe /S /A32`
* Uninstall: To silently uninstall AutoHotkey, pass the /Uninstall parameter to Installer.ahk. For example:
	* `"C:\Program Files\AutoHotkey\AutoHotkey.exe" "C:\Program Files\AutoHotkey\Installer.ahk" /Uninstall`
* For AutoHotkey versions older than 1.1.08.00, use uninst.exe /S. For example:
	* `"C:\Program Files\AutoHotkey\uninst.exe" /S`
* Extract
	* `AutoHotkey110903_Install.exe /D=F:\AutoHotkey /E`

---

## InstallDir
* `C:\Program Files\AutoHotkey\AutoHotkey`

[<img src="https://i.imgur.com/QtgeKYt.png">](https://i.imgur.com/QtgeKYt.png)

---

## Env var
### System
1) `%ProgramData%\Microsoft\Windows\Start Menu\Programs\AutoHotkey`

[<img src="https://i.imgur.com/xO6UHii.png">](https://i.imgur.com/xO6UHii.png)

---

## Process
1) AutoHotkey

---

## Traces
### Registries
1) `HKLM:\Software\AutoHotkey\`

[<img src="https://i.imgur.com/T15Ijfa.png">](https://i.imgur.com/T15Ijfa.png)

2) `HKLM:\Software\Classes\.ahk`

[<img src="https://i.imgur.com/aoqVWas.png">](https://i.imgur.com/aoqVWas.png)

3) `HKLM:\Software\Classess\Applications\AutoHotkey.exe`

[<img src="https://i.imgur.com/1x7oxsK.png">](https://i.imgur.com/1x7oxsK.png)

---

## Uninstall
* silent
	* `"C:\Program Files\AutoHotkey\uninst.exe" /S`
