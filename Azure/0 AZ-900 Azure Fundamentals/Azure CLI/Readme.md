# Azure CLI

## Doc
* [Get started with Azure CLI](https://docs.microsoft.com/en-us/cli/azure/get-started-with-azure-cli?view=azure-cli-latest)
* [Install Azure CLI on Windows](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest&tabs=azure-cli)

## Requirement
* Azure CLI require a storage for save your data

## version
````Azure Cli
version -o table
````

## output
* json - default (no colors)
* table
* jsonc - with colors
* tsv - only value (no headers)

[<img src="https://i.imgur.com/pT5FcPM.png">](https://i.imgur.com/pT5FcPM.png)

## Install
### W1809
````Powershell
invoke-webrequest -uri https://aka.ms/installazurecliwindows -outfile $env:temp\azurecli.msi
````
[<img src="https://i.imgur.com/xPRh2c4.png">](https://i.imgur.com/xPRh2c4.png)

````PowerShell
(start-process msiExec -argumentList "/i $env:temp\azurecli.msi /q" -wait -passThru).ExitCode
````
[<img src="https://i.imgur.com/PlTwKQB.png">](https://i.imgur.com/PlTwKQB.png)

* start new cmd
````batch
az login
````
[<img src="https://i.imgur.com/QnTSxW6.png">](https://i.imgur.com/QnTSxW6.png)
[<img src="https://i.imgur.com/1LpCvKj.png">](https://i.imgur.com/1LpCvKj.png)

````azure cli
az interactive
````
[<img src="https://i.imgur.com/EjyLWlw.png">](https://i.imgur.com/EjyLWlw.png)
[<img src="https://i.imgur.com/4e0aDYI.png">](https://i.imgur.com/4e0aDYI.png)
