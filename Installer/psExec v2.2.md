# psExec v2.2

## DDL
* https://download.sysinternals.com/files/PSTools.zip | 2.7MB

## URL
* https://docs.microsoft.com/en-us/sysinternals/downloads/psexec

---

## Intro
* runAs nt authority - this session used by e.g SCCM (install/Uninstall)

--

## Switch
* /i --Run the program you call (cmd, powershell, etc)
* /s --System Account

---

## nt authority
* NeedElevated: yes
````powershell
start-process .\psExec.exe -argumentList "/i /s powershell.exe"
````
[<img src="https://i.imgur.com/9xE3qPq.png">](https://i.imgur.com/9xE3qPq.png)
[<img src="https://i.imgur.com/Rs8W7E2.png">](https://i.imgur.com/Rs8W7E2.png)
