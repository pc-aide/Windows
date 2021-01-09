# 04 Azure data storage options

## Acronym
* DB - Database
* SQL - Structure query language
* RU/s - Request Unit per second
* SMB - Standard Server Message Block
* SSD - Solid State Drive
* HDD - Hard Disk Drive

## Overview
[<img src="https://i.imgur.com/orrM868.png">](https://i.imgur.com/orrM868.png)

## URL
* https://docs.microsoft.com/en-ca/learn/modules/intro-to-data-in-azure/1-introduction

## SQL DB
[<img src="https://i.imgur.com/DSyPp6k.png">](https://i.imgur.com/DSyPp6k.png)

## Azure Cosmos DB
[<img src="https://i.imgur.com/pk09v2w.png">](https://i.imgur.com/pk09v2w.png)

## Azure Blog storage
* To storage is optimized for storing massive amounts of unstructured data.
  Unstructured data is data that doesn't adhere to a particular data model or definition, such as text or binary data
  
### Storage tiers
* 3 storage tiers for blob object storage:
1) **Hot** storage tier:
  * optimized for storing data that is accessed frequently.

2) **cool** storage tier:
  * optimized for data that are infrequently accessed and stored for at least 30 days.
  
3) **archive** storage tier:
  * for data that are rarely accessed and stored for at least 180 days with flexible latency requirements.

## Data Lake Storage Gen1
* A large repository that stores both structured and unstructured data

[<img src="https://i.imgur.com/I4ylTnW.png">](https://i.imgur.com/I4ylTnW.png)
[<img src="https://i.imgur.com/zMbVMhL.png">](https://i.imgur.com/zMbVMhL.png)

## Azure Files
* File shares in the cloud
  * SMB

[<img src="https://i.imgur.com/A6l3jht.png">](https://i.imgur.com/A6l3jht.png)
[<img src="https://i.imgur.com/uad3HGW.png">](https://i.imgur.com/uad3HGW.png)

## Azure Queue
* Azure Queue storage is a service for storing large numbers of **messages** (like packets TCP for example)
  that can be accessed from anywhere in the world.

[<img src="https://i.imgur.com/qvNOCqt.png">](https://i.imgur.com/qvNOCqt.png)
[<img src="https://i.imgur.com/ezyn6VX.png">](https://i.imgur.com/ezyn6VX.png)

## Disk Storage
* Attached virtual hard disk (vhd)
  * SSD
    * Standard
    * Premium
  * HDD
  
[<img src="https://i.imgur.com/hmDQPbG.png">](https://i.imgur.com/hmDQPbG.png)

## Encryption
1) Azure Storage Service Encryption (SSE)
  * It encrypts the data before storing it and decrypts the data before returning it
  
2) Client-side encryption
  * The data is already encrypted by the client libraries

[<img src="https://i.imgur.com/K6xoEm7.png">](https://i.imgur.com/K6xoEm7.png)

## Replication for storage availability
* A replication type is set up when you create a storage account. 

## Compare on-premises sotrage to Azure data storage
### Table
| Needs                                              | On-premises                                                       | Azure data storage                                                |
| -------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| Compliance and security                            | Dedicated servers required for privacy and security               | Client-side encryption and encryption at rest                     |
| Store structured and unstructured data             | Additional IT resources with dedicated servers required           | Azure Data Lake and portal analyzes and manages all types of data |
| Replication and high availability                  | More resources, licensing, and servers required                   | Built-in replication and redundancy features available            |
| Application sharing and access to shared resources | File sharing requires additional administration resources         | File sharing options available without additional license         |
| Relational data storage                            | Needs a database server with database admin role                  | Offers database-as-a-service options                              |
| Distributed storage and data access                | Expensive storage, networking, and compute resources needed       | Azure Cosmos DB provides distributed access                       |
| Messaging and load balancing                       | Hardware redundancy impacts budget and resources                  | Azure Queue provides effective load balancing                     |
| Tiered storage                                     | Management of tiered storage needs technology and labor skill set | Azure offers automated tiered storage of data                     |
