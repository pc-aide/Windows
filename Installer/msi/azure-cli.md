# azure-cli

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

[<img src="https://i.imgur.com/R2WrVDZ.png">](https://i.imgur.com/R2WrVDZ.png)
[<img src="https://i.imgur.com/mTJjy7L.png">](https://i.imgur.com/mTJjy7L.png)

---

## WMI or cimInstance
* `get-wmiObject win32_product | ? {$_.name -like "*azure*"}`

[<img src="https://i.imgur.com/fxEiKYb.png">](https://i.imgur.com/fxEiKYb.png)

---

## Traces
### Files-01 - %windir%\installer
* %windir%\Installer\<Random>.msi

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

#### Registries
1) 
