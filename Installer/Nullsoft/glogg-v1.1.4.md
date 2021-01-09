# glogg-v1.1.4

## Acronym
* NSIS - Nullsoft Scriptable Install System

## Licence
* gplv3

## URL
* https://glogg.bonnefon.org/

## BIN
* [Github](https://github.com/nickbnf/glogg)

## DDL
* http://glogg.bonnefon.org/files/glogg-latest-x86_64-setup.exe

## Readme.md
````markdown
glogg - the fast, smart log explorer
=====================================

glogg is a multi-platform GUI application that helps browse and search
through long and complex log files.  It is designed with programmers and
system administrators in mind and can be seen as a graphical, interactive
combination of grep and less.

## Main features

* Runs on Unix-like systems, Windows and Mac thanks to Qt
* Provides a second window showing the result of the current search
* Reads UTF-8 and ISO-8859-1 files
* Supports grep/egrep like regular expressions
* Colorizes the log and search results
* Displays a context view of where in the log the lines of interest are
* Is fast and reads the file directly from disk, without loading it into memory
* Is open source, released under the GPL

## Requirements

* GCC version 4.8.0 or later
* Qt libraries (version 5.2.0 or later)
* Boost "program-options" development libraries
* Markdown HTML processor (optional, to generate HTML documentation)

glogg version 0.9.X still support older versions of gcc and Qt if you need to
build on an older platform.

## Building

The build system uses qmake. Building and installation is done this way:

```
tar xzf glogg-X.X.X.tar.gz
cd glogg-X.X.X
qmake
make
make install INSTALL_ROOT=/usr/local (as root if needed)
```

`qmake BOOST_PATH=/path/to/boost/` will statically compile the required parts of
the Boost libraries whose source are found at the specified path.
The path should be the directory where the tarball from www.boost.org is
extracted.
(use this method on Windows or if Boost is not available on the system)

The documentation is built and installed automatically if 'markdown'
is found.

## Tests

The tests are built using CMake, and require Qt5 and the Google Mocks source.

```
cd tests
mkdir build
cd build
export QT_DIR=/path/to/qt/if/non/standard
export GMOCK_HOME=/path/to/gmock
cmake ..
make
./glogg_tests
```

## Contact

Please visit glogg's website: http://glogg.bonnefon.org/

The development mailing list is hosted at http://groups.google.co.uk/group/glogg-devel
````

---

## Install
### 01 - Silent
* InstallDir: `c:\Program Files\glogg`
* Size: 20.1MB
* Nullsoft Install System v2.46
* Switchs:
  1) /S - Silent 
  2) /D=InstallDirNoDefault
  * Sensitive case: yes - uppercase
````powershell
Start-Process "glogg-latest-x86_64-setup.exe" -Argumentlist "/S"
````

### 02 - GUI
* Components
  1) glob
  2) Qt5 Runtime libraries
  3) Create start menu shortcut
    * if UncheckBox, so we need go to the path of installer to open the program
  4) associate with .log files

[<img src="https://i.imgur.com/cvlycIc.png">](https://i.imgur.com/cvlycIc.png)
---

## Overview
* open program:

[<img src="https://i.imgur.com/w5DVXGM.png">](https://i.imgur.com/w5DVXGM.png)

* Tools\Options:

[<img src="https://i.imgur.com/g03iGKE.png">](https://i.imgur.com/g03iGKE.png)
[<img src="https://i.imgur.com/6WFHbIr.png">](https://i.imgur.com/6WFHbIr.png)

* Associate with .log files :
  * Edit Log file
````powershell
#Installer
Start-Process .\glogg-latest-x86_64-setup.exe -ArgumentList "/S"
# Edit Log file (shell-context-menu: shift+F10)
New-Item "HKLM:\SOFTWARE\Classes" -Name "Log file" -Value "Log file" -Force -ErrorAction SilentlyContinue
New-Item "HKLM:\SOFTWARE\Classes\Log file\" -Name "DefaultIcon" -Value "C:\Program Files\glogg\glogg.exe,0" -Force -ErrorAction SilentlyContinue
New-Item "HKLM:\SOFTWARE\Classes\Log file\" -Name "shell" -Value "open" -Force -ErrorAction SilentlyContinue
New-Item "HKLM:\SOFTWARE\Classes\Log file\shell" -Name "edit" -Value "Edit Log file" -Force -ErrorAction SilentlyContinue
New-Item "HKLM:\SOFTWARE\Classes\Log file\shell" -Name "open" -Force -ErrorAction SilentlyContinue
#edit
New-Item "HKLM:\SOFTWARE\Classes\Log file\shell\edit" -Name "command" -Value "`"C:\Program Files\glogg\glogg.exe`" `"%1`"" -Force -ErrorAction SilentlyContinue
#open
New-Item "HKLM:\SOFTWARE\Classes\Log file\shell\open" -Name "command" -Value "`"C:\Program Files\glogg\glogg.exe`" `"%1`"" -Force -ErrorAction SilentlyContinue
#Assoc .log=Log file
# Error stream (cmd in Powershell) 2> $null
cmd /c assoc .log=Log file 2> $null
````

[<img src="https://i.ibb.co/Cb2wsCK/image.png">](https://i.ibb.co/Cb2wsCK/image.png)

* About:

[<img src="https://i.imgur.com/2Yl48XD.png">](https://i.imgur.com/2Yl48XD.png)


---

## Shortcuts
1) %ProgramData%\Microsoft\Windows\Start Menu\Programs\glogg.lnk
2) Shell:sendTo\glogg.lnk 

---

## Update
* Not found out: check up !?

---

## Files
### 01 - `%ProgramData%\Microsoft\Windows\Start Menu\Programs\glogg.lnk`

### 02 - `%ProgramFiles%\glogg`

### 03 - `%AppData%\glogg\glogg.ini`
* the file (*.ini) will be create only when the app was open
````ini
[SavedSearches]
version=1
searchHistory\size=0

[FilterSet]
version=1
filters\size=0

[General]
versionchecker.enabled=true
versionchecker.nextDeadline=1609262253

[RecentFiles]
version=1
filesHistory\1\name=C:/Program Files/glogg/platforms/qwindows.dll
filesHistory\size=1
````

---
## Registry
### 01 - CurrentUser

### 02 - LocalMachine
1) Uninstall
````powershell
get-item HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\glogg\
````
[<img src="https://i.imgur.com/ibUpFzL.png">](https://i.imgur.com/ibUpFzL.png)

2) Classes
````powershell
get-item HKLM:\SOFTWARE\Classes\*\OpenWithList\glogg.exe
````

[<img src="https://i.imgur.com/iMbrtEp.png">](https://i.imgur.com/iMbrtEp.png)

---

## Process
1) glogg.exe


---

## Uninstall
````powershell
Start-Process "$Env:ProgramFiles\glogg\Uninstall.exe" -ArgumentList "/S"
````

---

## Traces
### Files
1) $Env:ProgramFiles\glogg\
````powershell
ls "$env:ProgramFiles\glogg\" | select Mode,Name                                  
Mode   Name
----   ----
d----- platforms
-a---- README.md
````
````powershell
Remove-Item "$Env:ProgramFiles\glogg\" -Recurse -Force -ErrorAction SilentlyContinue
````
[<img src="https://i.imgur.com/FJ9jfc6.png">](https://i.imgur.com/FJ9jfc6.png)

2) shell:SendTo\glogg.lnk
````powershell
Remove-Item "$Env:APPDATA\Microsoft\Windows\SendTo\glogg.lnk" -Force -ErrorAction SilentlyContinue
````

[<img src="https://i.imgur.com/q1HRzw9.png">](https://i.imgur.com/q1HRzw9.png)

3) assoc & ftype
  * assoc .log - nothing
  * ftype: `Log file="C:\Program Files\glogg\glogg.exe" "%1"`
  
[<img src="https://i.imgur.com/TnLBN6n.png">](https://i.imgur.com/TnLBN6n.png)
````powershell
Remove-Item "HKLM:\SOFTWARE\Classes\Log file\" -Recurse -Force -ErrorAction SilentlyContinue
````

4) Still the icon for *.log
  * after reboot, no more the icon (glogg)

[<img src="https://i.imgur.com/ptXzQt9.png">](https://i.imgur.com/ptXzQt9.png)
[<img src="https://i.imgur.com/On3Mf2M.png">](https://i.imgur.com/On3Mf2M.png)
