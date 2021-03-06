# azure-cli-2.18.0

## Acronym
* CLI - Command Line Interface
* DDL - Download Direct Link

## URL
* https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli
  * size: 212 MB [installed]

## DDL
* https://azcliprod.blob.core.windows.net/msi/azure-cli-2.18.0.msi

---

## Switch
1) /q --quiet, no GUI
2) /NoRestart, program will never restart after the install

---

## InstallDir
* %ProgramFiles(x86)%\Microsoft SDKs\Azure\CLI2\

[<img src="https://i.imgur.com/nf8wVat.png">](https://i.imgur.com/nf8wVat.png)

---

## Install
### GUI
1) Welcome

[<img src="https://i.imgur.com/iOKBF2E.png">](https://i.imgur.com/iOKBF2E.png)

### CLI | Time: ~30s
* Work in Powershell & cmd
* `start-process msiExec -argumentList "/i azure-cli-2.18.0.msi /q /NoRestart"`

---

## Architecture
* multi architecture (32bits & 64 bits) 
* e.g
  0) installer msi - N/A
  
[<img src="https://i.imgur.com/GGVpvv8.png">](https://i.imgur.com/GGVpvv8.png)
  
  1) cli-{32,64}.exe
  
[<img src="https://i.imgur.com/V57LECX.png">](https://i.imgur.com/V57LECX.png)
[<img src="https://i.imgur.com/UFNckfR.png">](https://i.imgur.com/UFNckfR.png)

  2) python (32 bits)

[<img src="https://i.imgur.com/BCeXPfr.png">](https://i.imgur.com/BCeXPfr.png)

  3) 

---

## Test

* New cmdlet in PowerShell
  * `az`

[<img src="https://i.imgur.com/XgXqkdf.png">](https://i.imgur.com/XgXqkdf.png)

### Switch
1) -o --output in json|table
2) version
  * `az version -o table`

[<img src="https://i.imgur.com/Y0FkmS0.png">](https://i.imgur.com/Y0FkmS0.png)
[<img src="https://i.imgur.com/RewWwJh.png">](https://i.imgur.com/RewWwJh.png)

3) login
  * `az login`
  * `az login --debug`
  * `az login --verbose`

[<img src="https://i.imgur.com/R2WrVDZ.png">](https://i.imgur.com/R2WrVDZ.png)
[<img src="https://i.imgur.com/mTJjy7L.png">](https://i.imgur.com/mTJjy7L.png)

---

## Proxy | Firewall
1. proxy (set ...)
  * 
2. Firewall (Juniper, Cisco, Fortinet, etc)
  * 

---

## WMI or cimInstance
* `get-wmiObject win32_product | ? {$_.name -like "*azure*"}`

[<img src="https://i.imgur.com/fxEiKYb.png">](https://i.imgur.com/fxEiKYb.png)

---

## python
* ver: 3.6.8

[<img src="https://i.imgur.com/J2SArkn.png">](https://i.imgur.com/J2SArkn.png)

---

## Icons
* https://github.com/David-Summers/Azure-Design/blob/master/PNG_Icons-All/Azure%20CLI.png

[<img src="https://i.imgur.com/3HHZL8n.png">](https://i.imgur.com/3HHZL8n.png)

[<img src="https://www.computerhope.com/jargon/w/windows.gif">](https://www.computerhope.com/jargon/w/windows.gif)

[<img src="https://raw.githubusercontent.com/David-Summers/Azure-Design/master/PNG_Icons-All/Azure%20CLI.png">](https://raw.githubusercontent.com/David-Summers/Azure-Design/master/PNG_Icons-All/Azure%20CLI.png)

---

## Traces
### Files-01 - %windir%\installer
* `%windir%\Installer\<Random_AlphaNumeric>.msi`

[<img src="https://i.imgur.com/MDCtUEt.png">](https://i.imgur.com/MDCtUEt.png)

---

## Uninstall - Time: ~30s
* `msiExec /x {FD22CA59-EEDE-4472-AFF2-B56891DA2EF5} /q`
* after no more cmdlet of the az

[<img src="https://i.imgur.com/B0XCbSR.png">](https://i.imgur.com/B0XCbSR.png)

### Traces-After
#### Files
1) %ProgramFiles(x86)\Micosoft SDKs\Azure

[<img src="https://i.imgur.com/WREV1Ut.png">](https://i.imgur.com/WREV1Ut.png)

2) %UserProfile%\\.azure\

[<img src="https://i.imgur.com/jZPbkJ5.png">](https://i.imgur.com/jZPbkJ5.png)

