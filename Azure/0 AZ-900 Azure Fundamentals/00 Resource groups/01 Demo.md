# 01 Demo

## Acronym
* RG - Resource group
* IAM - Identity Access Management

## Most Used
1) Owner
2) Contributor
3) Reader

## Resource group
1) Create:
* Name PC-Aide-Resources-RG
* Region: ca-central

2) Create
* Name: PC-Aide-Secure-RG
* Region: idem

## PC-Aide-Resources-RG
* IAM\add role assignment\{role,co-admin,cutom}
  * Role assignment
    * [Role](https://i.imgur.com/EzdtMKj.png): Contributor
    * Select: StdUsers

[<img src="https://i.imgur.com/z7D6vfo.png">](https://i.imgur.com/z7D6vfo.png)

* if we loggin on stephane@pc-aidelab.onmicrosoft.com:
* Stephane can't see the other RG because no member of resource group

[<img src="https://i.imgur.com/lI6vZzK.png">](https://i.imgur.com/lI6vZzK.png)

## Create a resource
* with stephane
 * create: pc-aide-resources-rg\new\virtual network
 * error !
 
[<img src="https://i.imgur.com/jdXCtov.png">](https://i.imgur.com/jdXCtov.png)
[<img src="https://i.imgur.com/pJSkVqO.png">](https://i.imgur.com/pJSkVqO.png)

* admin can do that (new vnet):

[<img src="https://i.imgur.com/bdI5AkD.png">](https://i.imgur.com/bdI5AkD.png)
