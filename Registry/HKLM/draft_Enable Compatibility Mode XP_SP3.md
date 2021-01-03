# draft_Enable Compatibility Mode XP_SP3

## e.g.
### 01 - Cisco Jabber
````powershell
;   Syntax: "<InstalDir>\\*.exe"="~ <VALUE>"
;
;   List Compatibility Modes:
;       Description Value Data
;       Windows 8   WIN8RTM
;       Windows 7   WIN7RTM
;       Windows Vista SP2   VISTASP2
;       Windows Vista SP1   VISTASP1
;       Windows Vista   VISTARTM
;       Windows XP SP3  WINXPSP3
;       Windows XP SP2  WINXPSP2
;       Windows 98  WIN98
;       Windows 95  WIN95
;
;       Display Settings:
;       Description Value Data
;       8-bit (256) Color Mode  256COLOR
;       16-bit (65536) Color Mode   16BITCOLOR
;       640 x 480 Screen Resolution 640X480
;       Disable Display Scaling on High DPI Settings    HIGHDPIAWARE
;
;       Privilege Level:
;       Description Value Data
;       Run Program as Administrator    RUNASADMIN
;
;   SRC: https://qtechbabble.wordpress.com/2016/08/23/run-application-in-compatibility-mode-from-command-line/
;----------------------------------------------------------------------------------------------
 
;
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers]
"C:\\Program Files (x86)\\Cisco\\JabberVideo\\JabberVideo.exe"="~ WINXPSP3"
````
[<img src="https://i.imgur.com/Ad2KgsZ.png">](https://i.imgur.com/Ad2KgsZ.png)
