::&----------------------------------------------------------------------------------------------------------------------
::  Doc: https://ss64.com/nt/syntax-elevate.html
::  SRC: https://stackoverflow.com/questions/37878185/what-does-compat-layer-actually-do
::  RunAsInvoker can bypass UAC for:
::
:: Hint App-V5.x -> some app (old) working perfectly on Win7 but on Win10 some glitch visual (issue) because on Win10 we have gretest resolution that OS precede
:: so the solution is very simple - just testing couple resolution + colour and now working on Win10
:: Tested -> pending... <-- maybe need to end march 2019 to discover
::
:: Link ext -> https://pastebin.com/fTYBxTS6 <-- Compatibility available in Windows 10 -32-bit Compatibility Modes (90)
:: List : __compat_layer=@
::          @=RunAsInvoker <-- ignore any elevattion request in the app's manifest :
::          <requestedExecutionLevel level=asInvoker" uiAccess="false" />
:: each VA or package we have a manifest file and can customize it
:: Warning -> RunAsInvoker doesn't perform any elevation
::
::  Doc UAC: https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/dd835564(v=ws.10)
::
::          @=Win98 640x480
::          @=VistaSP1
::          @=VistaSP2
::          @=Win7RTM
::          @=Win8RTM
::          @=WINXPSP3
::          @=Win95
::
::  ╔═══════════════════════════════════════════════════════════════════╗
::  ║ set __COMPAT_LAYER=256Color                                        ║
::  ║ "C:\Program Files\Microsoft Office 15\root\office15\winword.exe"   ║
::  ╚═══════════════════════════════════════════════════════════════════╝
::
::  ╔═══════════════════════════════════════════════════════════════════╗
::  ║ cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" "%1"      ║
::  ║ "C:\Program Files\Microsoft Office 15\root\office15\winword.exe"   ║
::  ╚═══════════════════════════════════════════════════════════════════╝
::◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼
::  mp4 -> https://youtu.be/geptyFklZe4
::◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼◼
::&----------------------------------------------------------------------------------------------------------------------
 
::Bypass UAC prompt
cmd /k SET __COMPAT_LAYER=RunAsInvoker
