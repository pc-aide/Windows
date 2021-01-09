# Intro.md
* Windows Internet Name Service (WINS) is a legacy computer name registration
and resolution service that maps computer NetBIOS names to IP addresses.
* Now we deploy DNS versus WINS

## Acronym
* WINS : Windows Internet Name Service
* RSAT : Remote Server Administration Tools

## Topology
* [<img src="https://networkencyclopedia.com/wp-content/uploads/2019/09/wins-windows-internet-name-service-300x262.jpg">](https://networkencyclopedia.com/wp-content/uploads/2019/09/wins-windows-internet-name-service-300x262.jpg)

## Feature
````PowerShell
#https://imgur.com/fcIcVGk
get-windowsFeature *wins*
````
````PowerShell
#https://imgur.com/jpfqxds
add-windowsFeature wins -includeManagementTools
````

## New *.msc
* winsMgmt.msc
* [<img src="https://i.imgur.com/gav0HuTg.png">](https://i.imgur.com/gav0HuTg.png)
* [<img src="https://i.imgur.com/FyIp6qag.png">](https://i.imgur.com/FyIp6qag.png)
* [<img src="https://i.imgur.com/4d9QJT4g.png">](https://i.imgur.com/4d9QJT4g.png)

### Display Recrods
* [<img src="https://i.imgur.com/TMcuvWi.png">](https://i.imgur.com/TMcuvWi.png)
* [<img src="https://i.imgur.com/q7LWbv5.png">](https://i.imgur.com/q7LWbv5.png)
* [<img src="https://i.imgur.com/iTerO9gg.png">](https://i.imgur.com/iTerO9gg.png)

### Service
````PowerShell
#https://imgur.com/jLJe9Co
start-service wins
````
#### Not start automatic
* [<img src="https://i.imgur.com/pGLaLqug.png">](https://i.imgur.com/pGLaLqug.png)
* New-ScheduledTask !?

## DHCP
### New Scope\WINS Servers
* [<img src="https://i.imgur.com/Un5VZX8.png">](https://i.imgur.com/Un5VZX8.png)
* Scope Options : [<img src="https://i.imgur.com/Vh5lctC.png">](https://i.imgur.com/Vh5lctC.png)

## Clients
### Default 
* [<img src="https://i.imgur.com/guFuyzq.png">](https://i.imgur.com/guFuyzq.png)
* [<img src="https://i.imgur.com/lfgMmEK.png">](https://i.imgur.com/lfgMmEK.png)
* [<img src="https://i.imgur.com/T7oGnxd.png">](https://i.imgur.com/T7oGnxd.png)
* Forced Registration : 
    ````Bath
    REM (Elevated:y)
    REM -RR ReleaseRefresh Sends Name Release packets to WINS & then, starts Refresh
    REM https://imgur.com/Obx98Ja
    nbtstat -RR
    ````
