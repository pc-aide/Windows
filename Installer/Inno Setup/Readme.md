# Intro

## URL
* https://jrsoftware.org/ishelp/index.php?topic=setupcmdline

## Switchs
* /ALLUSERS
  * Instructs Setup to install in administrative install mode. Only has an effect when the [Setup] section directive PrivilegesRequiredOverridesAllowed allows the commandline override.
* /Silent
  * Instructs Setup to be silent
* /VERYSILENT --Instructs Setup to be very silent
* /SUPPRESSMSGBOXES --Instructs Setup to suppress message boxes.
* /LOG --Causes Setup to create a log file in the user's TEMP directory.
* /LOG="filename" 
  * --Same as /LOG, except it allows you to specify a fixed path/filename to use for the log file.
* /NOCANCEL --Prevents the user from cancelling during the installation process.
* /NORESTART --Prevents Setup from restarting the system following a successful installation, or after a Preparing to Install failure that requests a restart.
* /RESTARTEXITCODE=exit code --Specifies a custom exit code that Setup is to return when the system needs to be restarted.
* /CLOSEAPPLICATIONS --Instructs Setup to close applications using files that need to be updated.
* /NOCLOSEAPPLICATIONS --Prevents Setup from closing applications using files that need to be updated.
* /RESTARTAPPLICATIONS --Instructs Setup to restart applications.
* /NORESTARTAPPLICATIONS --Prevents Setup from restarting applications.
* /LOADINF="filename" 
  * Instructs Setup to load the settings from the specified file after having checked the command line.
* /SAVEINF="filename" 
  * Instructs Setup to save installation settings to the specified file.
* /LANG=language --Specifies the internal name of the language to use.
* /DIR="x:\dirname" --Overrides the default directory name.
* /GROUP="folder name" --Overrides the default folder name.
* /NOICONS 
  * --Instructs Setup to initially check the Don't create a Start Menu folder check box.
* /TYPE=type name --Overrides the default setup type.
* /COMPONENTS="comma separated list of component names" --Overrides the default component settings.
* /TASKS="comma separated list of task names" --Specifies a list of tasks that should be initially selected.
* /MERGETASKS="comma separated list of task names" --Like the /TASKS parameter, except the specified tasks will be merged with the set of tasks that would have otherwise been selected by default.
* /PASSWORD=password --Specifies the password to use.

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
