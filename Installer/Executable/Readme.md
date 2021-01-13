# Executable

## Intro
* An Executable don't need the concept 'install' or 'uninstall'

### E.g
* Eclipse, an IDE
* Age of empire
* Autohotkey
* Bonnefon glogg 
* and so on

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
