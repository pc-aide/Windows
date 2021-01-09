# 01 Exercises - Wordpress

## Intro
* Exercise - Create a website hosted in Azure
  * sandboxes | Time 4h

## URL
* https://docs.microsoft.com/en-ca/learn/modules/welcome-to-azure/4-exercise-create-website

## Steps
0) Checkup if your in sandbox
* Loggin (right top window) :

[<img src="https://i.imgur.com/51EGymZ.png">](https://i.imgur.com/51EGymZ.png)

* Resource groups:

[<img src="https://i.imgur.com/s4tTg0a.png">](https://i.imgur.com/s4tTg0a.png)

* Properties :
  
[<img src="https://i.imgur.com/AhLpPj2.png">](https://i.imgur.com/AhLpPj2.png)

  * Storage:

[<img src="https://i.imgur.com/SZDRE4v.png">](https://i.imgur.com/SZDRE4v.png)

  * Tags:
  
[<img src="https://i.imgur.com/Ld13A5g.png">](https://i.imgur.com/Ld13A5g.png)

  * Storage Explorer (preview):
  
[<img src="https://i.imgur.com/PNARAL7.png">](https://i.imgur.com/PNARAL7.png)

  * Access keys:
  
[<img src="https://i.imgur.com/ytq8xNE.png">](https://i.imgur.com/ytq8xNE.png)

  * Geo-replication:
  
[<img src="https://i.imgur.com/Wl3IZ2w.png">](https://i.imgur.com/Wl3IZ2w.png)
[<img src="https://i.imgur.com/UjEQDBd.png">](https://i.imgur.com/UjEQDBd.png)
  
  * Encryption:
  
[<img src="https://i.imgur.com/ZZfForT.png">](https://i.imgur.com/ZZfForT.png)
  
2) Create a resource:

[<img src="https://i.imgur.com/oUGFrPQ.png">](https://i.imgur.com/oUGFrPQ.png)

3) Azure Marketplace:
* wordpress

[<img src="https://i.imgur.com/KoxHikl.png">](https://i.imgur.com/KoxHikl.png)

4) Create
  * App name: WPUS01
    * FQDN (unique) - .azurewebsites.net
  * Subscription: Concierge Subscription
  * Resource Group: <sandboxID>
  * Database Provider: MySQL in APP

[<img src="https://i.imgur.com/h07xgnN.png">](https://i.imgur.com/h07xgnN.png)

* Errors App Service plan/Location:

[<img src="https://i.imgur.com/bBELxGh.png">](https://i.imgur.com/bBELxGh.png)

5) New App Service Plan
* App Service plan: wordpress-service-pln
* Location: Central US
* Pricing tier: S1 Standard

[<img src="https://i.imgur.com/kLXeAvE.png">](https://i.imgur.com/kLXeAvE.png)

6) Spec picker (select Pricing tier):

[<img src="https://i.imgur.com/3NazV96.png">](https://i.imgur.com/3NazV96.png)
[<img src="https://i.imgur.com/hipsfJ4.png">](https://i.imgur.com/hipsfJ4.png)

7) Create:

[<img src="https://i.imgur.com/dEmscuH.png">](https://i.imgur.com/dEmscuH.png)

8) Notifications: 

[<img src="https://i.imgur.com/0hrOMxy.png">](https://i.imgur.com/0hrOMxy.png)

9) Deployment is in progress:

[<img src="https://i.imgur.com/7h93zsQ.png">](https://i.imgur.com/7h93zsQ.png)

10) Complete:

[<img src="https://i.imgur.com/KgtP36Q.png">](https://i.imgur.com/KgtP36Q.png)

11) URL:
* https://wpus01.azurewebsites.net:

[<img src="https://i.imgur.com/wSHPCJA.png">](https://i.imgur.com/wSHPCJA.png)
[<img src="https://i.imgur.com/NZpSAbD.png">](https://i.imgur.com/NZpSAbD.png)

12) Cfg:

[<img src="https://i.imgur.com/YU7eSZH.png">](https://i.imgur.com/YU7eSZH.png)

13) Console WP:

[<img src="https://i.imgur.com/4tljPNK.png">](https://i.imgur.com/4tljPNK.png)

14) Dashboard Azure:

[<img src="https://i.imgur.com/bD9YA3E.png">](https://i.imgur.com/bD9YA3E.png)

15) Select your App Service:

[<img src="https://i.imgur.com/sXXXNYk.png">](https://i.imgur.com/sXXXNYk.png)
[<img src="https://i.imgur.com/GAbUomW.png">](https://i.imgur.com/GAbUomW.png)

16) Scale up (scale down - inverse:
* more CPU, RAM, storage
* scale out (scale in - inverse) :
 * Add one or more VMs

[<img src="https://i.imgur.com/ibsmc5J.png">](https://i.imgur.com/ibsmc5J.png)
[<img src="https://i.imgur.com/rr3l5sh.png">](https://i.imgur.com/rr3l5sh.png)

17) All resources:

[<img src="https://i.imgur.com/i9qg4ao.png">](https://i.imgur.com/i9qg4ao.png)

18) Advisor:

[img src="https://i.imgur.com/E3MivCS.png">](https://i.imgur.com/E3MivCS.png)

19) Cost Management 
* Overview:

[<img src="https://i.imgur.com/7HoGElD.png">](https://i.imgur.com/7HoGElD.png)

20) Logic
1) left panel
2) Service x (e.g App service)
3) Configuration (Overview, Deployment, settings, etc)

[<img src="https://i.imgur.com/rdyWFW9.png">](https://i.imgur.com/rdyWFW9.png)

21) Scale up (app service plan)
 * F1
  * Shared infrastructure
  * 1 GB memory
  * 60 min/day computre
  * Free
  
[<img src="https://i.imgur.com/FAiqs3y.png">](https://i.imgur.com/FAiqs3y.png)
