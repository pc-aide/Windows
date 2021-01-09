# Intro
* %UserName%

## Doc
* https://nsis.sourceforge.io/Main_Page

## Switch
1) /S (case sensitive)
2) /D=InstallDirNoDefault

---

## Env var location
|n| Variable | Windows 10 |
|-|----------|------------|
|1|%ALLUSERSPROFILE%|C:\ProgramData|
|2|%APPDATA%|	C:\Users\{UserName}\AppData\Roaming|
|3|%COMMONPROGRAMFILES%|C:\Program Files\Common Files|
|4|%COMMONPROGRAMFILES(x86)%|C:\Program Files (x86)\Common Files|
|5|%HOMEPATH%|C:\Users\{UserName}|
|6|%LOCALAPPDATA%|C:\Users\{UserName}\AppData\Local|
|7|%ProgramW6432%|C:\Program Files|
|8|%PROGRAMFILES(X86)%|C:\Program Files (x86)|
|9|%USERPROFILE%|C:\Users\{UserName}|
|10|%SystemRoot%\System32\LogFiles\Firewall\pFirewall.log|C:\Windows\System32\LogFiles\Firewall\pFirewall.log|
|11|%Public%\Desktop\ |C:\Users\Public\Desktop\ |

---

## Evn var no location
* %UserName%
* %ComputerName%

---

## Extract *.exe
* The archive may be unpacked using either **7-Zip**
