# 10 Control & organize Azure resources with Azure Resource Manager

## Acronym
* NSG - Network Security Group
* RBAC - Role-based access control
* vnet - Virtual network
* SA - Storage Account
* ACL - Access Control List (grants: allow, deny)
* RG - Resource group
* IAM - Identity & access management

## Overview
[<img src="https://i.imgur.com/68GA1yy.png">](https://i.imgur.com/68GA1yy.png)

## URL
* https://docs.microsoft.com/en-ca/learn/modules/control-and-organize-with-azure-resource-manager/1-introduction

## Resource groups
* A resource group is a collection of resources that share the same lifecycle, permissions, & policies
* A resource grou is a logical container for resources deployed on Azure
 * Thes resources are anything you create in an Azure subscription (like VM, App, etc)
* Resouce groups  
  * Resources
    * VMs, vnet, NSG, SA, and so on
* Policy
  * Definitions
  * Assignments
    * scope

[<img src="https://i.imgur.com/VvmAgpV.png">](https://i.imgur.com/VvmAgpV.png)

* ACLs: 

[<img src="https://i.imgur.com/y7ysCpA.png">](https://i.imgur.com/y7ysCpA.png)

* Pprevent deletion of resource (policy):
[<img src="https://i.imgur.com/lf5dOeW.png">](https://i.imgur.com/lf5dOeW.png)


* Tags
[<img src="https://i.imgur.com/ETrJGi7.png">](https://i.imgur.com/ETrJGi7.png)
[<img src="https://i.imgur.com/aufOjFj.png">](https://i.imgur.com/aufOjFj.png)

* Logical grouping:

[<img src="https://i.imgur.com/J1ZUlV2.png">](https://i.imgur.com/J1ZUlV2.png)

* Life cycle
 * if you delete a resource group
  * all resources contained within are also deleted
  
* Overview (MsfLearn-Core-Infrastructure-RG):

[<img src="https://i.imgur.com/ub3SWLY.png">](https://i.imgur.com/ub3SWLY.png)

* NetworkWatcherRG
 * Created aumatically :
 
[<img src="https://i.imgur.com/xZtnFAn.png">](https://i.imgur.com/xZtnFAn.png)

* create resource
 * vnet
 
[<img src="https://i.imgur.com/Fu66wxV.png">](https://i.imgur.com/Fu66wxV.png)

* msfLearn-vnet1:

[<img src="https://i.imgur.com/v85cUIN.png">](https://i.imgur.com/v85cUIN.png)

* Diagram
 * msfLearn-vnet
  * Address space: 10.0.0.0/16

[<img src="https://i.imgur.com/O27vZzu.png">](https://i.imgur.com/O27vZzu.png)

* mfLearn-vnet2:

[<img src="https://i.imgur.com/kgG95wx.png">](https://i.imgur.com/kgG95wx.png)
[<img src="https://i.imgur.com/N1yiwtW.png">](https://i.imgur.com/N1yiwtW.png)
[<img src="https://i.imgur.com/n7cPSg8.png">](https://i.imgur.com/n7cPSg8.png)

* Ornazing principles:
 * vnet-rg
 * vm-rg
 * db-rg
 
[<img src="https://i.imgur.com/36MZvQI.png">](https://i.imgur.com/36MZvQI.png)

* Environment:
 * prod-rg
 * lab-rg
 * dev-rg
 * finance-rg
 * marketing-rg
 * hr-rg

[<img src="https://i.imgur.com/ZIL3j1r.png">](https://i.imgur.com/ZIL3j1r.png)
[<img src="https://i.imgur.com/bXFqrr3.png">](https://i.imgur.com/bXFqrr3.png)

* Combination
 * prod-finance
 * dev-finance
 * prod-marketing
 * dev-marketing
 
[<img src="https://i.imgur.com/LAXThcH.png">](https://i.imgur.com/LAXThcH.png)

* Lifecycle
 * Eg. create project01Lab-rg
  * create 10x VMs, 3x vnet, etc
  after 1 month no anymore, so juste delete the resource group, and all resources within will be delete
  
* All resources (dashboard):

[<img src="https://i.imgur.com/gJ71hT4.png">](https://i.imgur.com/gJ71hT4.png)

## Tags
* A resource can have up to 50 tags
 * The **name** is limited to 512 characters
  * Except storage account which have a limit of 128 characters
* Tag **value** is limited to 256 characters for all types of resources
* Not all resource type support tags

* Policy
 * You can use Policy to automatically add or enforce tags for resources your organization creates base on policy condition that you define
  * E.g: new resource with requirement value for the department tag
 
* We can add the column "tag":

[<img src="https://i.imgur.com/mnElrDN.png">](https://i.imgur.com/mnElrDN.png)
[<img src="https://i.imgur.com/I69Ybgs.png">](https://i.imgur.com/I69Ybgs.png)
[<img src="https://i.imgur.com/fPi3xdC.png">](https://i.imgur.com/fPi3xdC.png)
[<img src="https://i.imgur.com/ESf8GeA.png">](https://i.imgur.com/ESf8GeA.png)

* Filter:

[<img src="https://i.imgur.com/LpLe4sA.png">](https://i.imgur.com/LpLe4sA.png)

* Used an alert on tag or resource
 * VMs:
  * Shutdown:6PM & Startup:7AM

[<img src="https://i.imgur.com/vzaa5m9.png">](https://i.imgur.com/vzaa5m9.png)

## IAM
* RBAC
 * actions
  * Read, write, delete
* ResourceGroupX\Home:

[<img src="https://i.imgur.com/Kj7u5vU.png">](https://i.imgur.com/Kj7u5vU.png)
[<img src="https://i.imgur.com/DsWJht5.png">](https://i.imgur.com/DsWJht5.png)

## Locks
* Delete: 

[<img src="https://i.imgur.com/H51PqOz.png">](https://i.imgur.com/H51PqOz.png)
[<img src="https://i.imgur.com/yK6isS2.png">](https://i.imgur.com/yK6isS2.png)

* test to delete it:

[<img src="https://i.imgur.com/dId4pT5.png">](https://i.imgur.com/dId4pT5.png)
[<img src="https://i.imgur.com/Zrqq1qM.png">](https://i.imgur.com/Zrqq1qM.png)


* Read:

[<img src="https://i.imgur.com/pnKIyRK.png">](https://i.imgur.com/pnKIyRK.png)
[<img src="https://i.imgur.com/6dkHSw0.png">](https://i.imgur.com/6dkHSw0.png)

* test addresse space (vnet1)
 * add: 10.56.0.0/24:

[<img src="https://i.imgur.com/SSwQql3.png">](https://i.imgur.com/SSwQql3.png)
[<img src="https://i.imgur.com/KrHKxXy.png">](https://i.imgur.com/KrHKxXy.png)
 * but the move this resource with ohter resource group, so it's allow:
 
[<img src="https://i.imgur.com/isOxIaJ.png">](https://i.imgur.com/isOxIaJ.png)
[<img src="https://i.imgur.com/Bxu2cmA.png">](https://i.imgur.com/Bxu2cmA.png)

* warning we can delete a resource group with yet a resource locker, and not yet moving to another resource group
* e.g
 * i want to delete: rg-test
  * his resource msfLearn-vnet(with locks delete)
  * i need finish the move msfLearn-vnet1 before to delete this resource group

[<img src="https://i.imgur.com/SriZPhx.png">](https://i.imgur.com/SriZPhx.png)
* the move resource is done (vnet), now i can delete this resource group

[<img src="https://i.imgur.com/18vpNj8.png">](https://i.imgur.com/18vpNj8.png)
[<img src="https://i.imgur.com/qQt5QwJ.png">](https://i.imgur.com/qQt5QwJ.png)

## Dahsboard not still update even after Refresh:

[<img src="https://i.imgur.com/mPobQPc.png">](https://i.imgur.com/mPobQPc.png)
[<img src="https://i.imgur.com/df5oBN8.png">](https://i.imgur.com/df5oBN8.png)
[<img src="https://i.imgur.com/EdU4Esl.png">](https://i.imgur.com/EdU4Esl.png)

## Locks
* A setting that can be applied to any **resource** to block modification (**read** - exept move - used policy) or deletion (**delete**)
* warning wiht Read-only on SA
 * POST (http method) need a write, so if we have only read, it can lead to unexpected results
* concept inherited by from the resource group, e.g my vnet1 or SA

[<img src="https://i.imgur.com/mGkvE8S.png">](https://i.imgur.com/mGkvE8S.png)
[<img src="https://i.imgur.com/LhMxrzJ.png">](https://i.imgur.com/LhMxrzJ.png)
