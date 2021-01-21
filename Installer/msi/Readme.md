# msi

---

## Switch
1) -q --quiet with no GUI
2) 

---

## Env Var
### Local Machine
| n  | Variable                                                  | Windows 10                                               |
| -- | --------------------------------------------------------- | -------------------------------------------------------- |
| 1  | %ALLUSERSPROFILE%<br>%ProgramData%                        | C:\\ProgramData                                          |
| 2  | %COMMONPROGRAMFILES%                                      | C:\\Program Files\\Common Files                          |
| 3  | %COMMONPROGRAMFILES(x86)%                                 | C:\\Program Files (x86)\\Common Files                    |
| 5  | %ProgramW6432%<br>%PROGRAMFILES%                          | C:\\Program Files                                        |
| 6  | %PROGRAMFILES(X86)%                                       | C:\\Program Files (x86)                                  |
| 7  | %SystemRoot%\\System32\\LogFiles\\Firewall\\pFirewall.log | C:\\Windows\\System32\\LogFiles\\Firewall\\pFirewall.log |
| 8  | %Public%\\Desktop\\                                       | C:\\Users\\Public\\Desktop\\                             |

### Active Setup (%UserName%)
| n  | Variable                                                  | Windows 10                                               |
| -- | --------------------------------------------------------- | -------------------------------------------------------- |
| 1  | %APPDATA%                                                 | C:\\Users{UserName}\\AppData\\Roaming                    |
| 2  | %HOMEPATH%<br>%USERPROFILE%                               | C:\\Users{UserName}                                      |
| 3  | %LOCALAPPDATA%                                            | C:\\Users{UserName}\\AppData\\Local                      |
| 4  | %tmp%                                                     | C:\\Users{UserName}\\AppData\\Local\\Temp                |

---

## Shell
|n|Name          |Windows 10                                                             |
|-|--------------|-----------------------------------------------------------------------|
|1|SendTo        |C:\\Users\\%UserName%\\AppData\\Roaming\\Microsoft\\Windows\\SendTo\   | 
|2|Start Menu    |C:\\Users\\%UserName%\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu|
|3|Startup       |C:\\Users\\%UserName%\\Appdata\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\Startup|
|4|Common startup|C:\\ProgramData\\Microsoft\\Windows\Start Menu\\Programs\\StartUp|

[<img src="https://i.ibb.co/3Br9Knt/image.png">](https://i.ibb.co/3Br9Knt/image.png)
