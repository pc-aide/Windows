# AutoHotkey-1.1.33.02

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

## Extaller (*.exe)
* Auto run (like eclipse, an IDE)

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

## Process
1) AutoHotkey
