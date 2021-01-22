# azure-cli

## Acronym
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

## Install
* Work in Powershell & cmd
* `start-process msiExec -argumentList "/i azure-cli-2.18.0.msi /q"`

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
