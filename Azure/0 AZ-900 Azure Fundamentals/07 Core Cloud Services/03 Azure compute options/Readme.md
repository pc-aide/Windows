# 03 Azure compute options

## Acronym
* UD - Update Domain
* PaaS - Platform as a Service
* ACR - Azure Container Registry

## Doc
* [Choose an Azure compute service for your application](https://docs.microsoft.com/en-us/azure/architecture/guide/technology-choices/compute-decision-tree)
* [Windows virtual machines in Azure](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/overview?toc=/azure/virtual-machines/windows/toc.json)

## URL
* https://docs.microsoft.com/en-ca/learn/modules/intro-to-azure-compute/1-introduction

## Overview
[<img src="https://i.imgur.com/Xv1og6N.png">](https://i.imgur.com/Xv1og6N.png)

## Availability set
1) Falt Domain
2) Updae domain

[<img src="https://i.imgur.com/dNQ7oJq.png">](https://i.imgur.com/dNQ7oJq.png)

## Scale set
* scaling up | down
  * up: more CPU, storage, RAM
* scaling in | out
  * out: more VMs
  
## Azure Batch
  * job scheduling
    * Start a pool of compute VMs
    * Install apps & staging data
    * Identifies failures
    * scale down (less : CPU,RAM,storage) the pool as work completes

## Containers
* PaaS
* Container Instances
 * Image:
   * Quckstart
   * ACR
   * Docker
* Kubernetes services
 * Manager your containers & API

### kubernetes services
[<img src="https://i.imgur.com/NAKXEVX.png">](https://i.imgur.com/NAKXEVX.png)
[<img src="https://i.imgur.com/2ANXtXm.png">](https://i.imgur.com/2ANXtXm.png)
[<img src="https://i.imgur.com/CsxIjJn.png">](https://i.imgur.com/CsxIjJn.png)

## Serverless
1) Abrastrction of servers
2) Event-driven scale
3) Micro-billing

### 2x Implementations 
* Azure has 2 implementations of serverless compute
  * Azue Function
   * Which can execute code in almost any modern language
  * Azure Logic Apps
   * Which are disgned in a web-bases designer & can execute logic triggered by Azure
     services without writing any code
