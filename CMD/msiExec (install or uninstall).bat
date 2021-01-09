::&----------------------------------------------------------------------------------------------------
::& Manual MsiExec: https://docs.microsoft.com/en-us/windows/win32/msi/command-line-options
::&
::& Syntax: msiExec /Option <Required Parameter> [Optional Parameter]
::& Arg:
::&     /i: install
::&     /x: uninstall
::&     /q: quiet - idem to /qn
::&     /qn: quiet no UI
::&     /qb: quiet basic UI
::&     /promptRestart: Prompts the user for restart if necessary
::&     /L[i|w|e|...| <LogFile>: Logging Options
::&         i: Status messages
::&         v: Verbose output
::&----------------------------------------------------------------------------------------------------
 
::Uninstall sielnt <-https://imgur.com/kLYKOMA
msiExec /x <PackageCode> /q
 
::Install <-
msiExec /i *.msi /q
 
::MST file <-
msiExec /i *.msi Transforms=*.mst /q
 
::InstallDir (main folder install)
msiexec /i "msi path" INSTALLDIR="C:\myfolder" /q
