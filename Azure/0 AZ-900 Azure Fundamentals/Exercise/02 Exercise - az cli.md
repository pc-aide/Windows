# 02 Exercise - az cli

## URL
* https://docs.microsoft.com/en-ca/learn/modules/welcome-to-azure/6-exercise-cloud-shell

## Intro
* Exercise - Access an App Service using Azure Cloud Shell

## Goal
* if we have many wordpress, and need stop all, so we use Azure Cloud Shell CLI (batch)

## help
[<img src="https://i.imgur.com/mGI93uc.png">](https://i.imgur.com/mGI93uc.png)

## Cloud shell (portal)
[<img src="https://i.imgur.com/Evx4ORV.png">](https://i.imgur.com/Evx4ORV.png)

## PowerShell (portal)
[<Img src="https://i.imgur.com/jCyWPqz.png">](https://i.imgur.com/jCyWPqz.png)

## Azure CLI
````Azure CLI
az account list --output table
````
[<img src="https://i.imgur.com/nR1YHVy.png">](https://i.imgur.com/nR1YHVy.png)

* Default: json
````Azure CLI
az account list
````
[<img src="https://i.imgur.com/Ym9ZqBH.png">](https://i.imgur.com/Ym9ZqBH.png)

````Azure CLI
az group list --output table
````
[<img src="https://i.imgur.com/2gvYq41.png">](https://i.imgur.com/2gvYq41.png)

````Azure CLI
az resource list \
--resource-group learn-6a3bfb7c-229c-4c35-9b29-1b9dc7e26f21 \
--resource-type Microsoft.Web/sites
````
[<img src="https://i.imgur.com/22lKIHf.png">](https://i.imgur.com/22lKIHf.png)

* copy the name: WPUS01

````Azure CLI
az webapp stop \
--resource-group learn-6a3bfb7c-229c-4c35-9b29-1b9dc7e26f21 \
--name WPUS01
````
[<img src="https://i.imgur.com/aAYtt78.png">](https://i.imgur.com/aAYtt78.png)

````Azure CLI
az webapp list --output table
````
[<img src="https://i.imgur.com/sw063Za.png">](https://i.imgur.com/sw063Za.png)
[<img src="https://i.imgur.com/z12f5og.png">](https://i.imgur.com/z12f5og.png)


```Azure CLI
az webapp start \
--resource-group learn-6a3bfb7c-229c-4c35-9b29-1b9dc7e \
--name WPUS01
````

* Error cred :

[<img src="https://i.imgur.com/jbmxLmi.png">](https://i.imgur.com/jbmxLmi.png)

* error ResourceGroupID:

[<img src="https://i.imgur.com/1UwmOI8.png">](https://i.imgur.com/1UwmOI8.png)
[<img src="https://i.imgur.com/oBvGRXY.png">](https://i.imgur.com/oBvGRXY.png)
