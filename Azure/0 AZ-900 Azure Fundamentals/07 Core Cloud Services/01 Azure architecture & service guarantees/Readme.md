# 07 Core Cloud Services - AZ architecture & service guaranteess

## Acronym
* AZ - Availability Zone
* SLAs - Service-Level Agreements
* FMA - Failure Mode Analysis 
* HA - High Availability

## Doc
* [Core Cloud Services - AZ architecture & service guaranteess](https://docs.microsoft.com/en-ca/learn/modules/explore-azure-infrastructure/2-azure-datacenter-locations)

## Regions
[<img src="https://i.imgur.com/dewzRKP.png">](https://i.imgur.com/dewzRKP.png)

## Availability zone
[<img src="https://i.imgur.com/ResTA84.png">](https://i.imgur.com/ResTA84.png)


* Zonal services 
  * you pin the resource to a specific zone (for example, virtual machines, managed disks, IP addresses)
* Zone-redundant services 
  * platform replicates automatically across zones (for example, zone-redundant storage, SQL Database).

## Region pair
* It's possible that a large enough disaster could cause an outage large enough to affect even two datacenters.

* E.g
  * Region pairs in Azure are West US paired with East US, and SouthEast Asia paired with East Asia.
  
[<img src="https://i.imgur.com/V3bhJFL.png">](https://i.imgur.com/V3bhJFL.png)

## SLAs
* SLAs describe Microsoft's commitment to providing Azure customers with specific performance standards.
* There are SLAs for individual Azure products and services.
* SLAs also specify what happens if a service or product fails to perform to a governing SLA's specification.

## SLAs for Azure products & services
1) Performance Targets
2) Uptime and Connectivity Guarantees
3) Service credits

## Uptime & Connectivity Guarantees
### Table
| SLA %  | Downtime per week | Downtime per month | Downtime per year |
| ------ | ----------------- | ------------------ | ----------------- |
| 99     | 1.68 hours        | 7.2 hours          | 3.65 days         |
| 99.9   | 10.1 minutes      | 43.2 minutes       | 8.76 hours        |
| 99.95  | 5 minutes         | 21.6 minutes       | 4.38 hours        |
| 99.99  | 1.01 minutes      | 4.32 minutes       | 52.56 minutes     |
| 99.999 | 6 seconds         | 25.9 seconds       | 5.26 minutes      |

### E.g
* the SLA for the Azure Cosmos DB service SLA offers **99.999 percent uptime**,
 which includes low-latency commitments of less than 10 milliseconds on DB read operations
 as well as on DB write operations.
 
## Service Credits
* Customers may have a **discount** applied to their Azure **bill**, as compensation for an under-performing Azure product or service

### VM
* Second column shows the corresponding service credit amount you receive if the actual uptime is less than the specified SLA target for that month.
  Service Credits
#### Table
| Monthly uptime % | Service credit % |
| ---------------- | ---------------- |
| < 99.9           | 10               |
| < 99             | 25               |
| < 95             | 100              |

## Calculating downtime
[<img src="https://i.imgur.com/kQaWa54.png">](https://i.imgur.com/kQaWa54.png)
````text
99.95% × 99.99% = 99.94%
````

## Combined probability of failure
* Multiple services has more potential failure points
* If the SQL Database is unavailable, you can put transactions into a queue for processing at a later time :

[<img src="https://i.imgur.com/pLvWjjf.png">](https://i.imgur.com/pLvWjjf.png)
````text
1.0 − (0.0001 × 0.001) = 99.99999%
````
* if we add the queue to our web app, the total compsite SLA is: 
````text
99.95% × 99.99999% = ~99.95%
````
* Notice we've improved our SLA behavior. However, there are trade-offs to using this approach:
 the application logic is more complicated, you are paying more to add the queue support,
 and there may be data-consistency issues you'll have to deal with due to retry behavior.
 
 ## Improve your app reliability in Azure
 * Create your own SLA = Application SLA
 
 ## Resiliency
 * To identify possible points of failure & to define how the application will respond to those failulres
 
 ## HA
 * Tips:
   * A workload that requires 99.99% uptime shouldn't depend upon a service with a 99.9% SLA.
   * An SLA that defines an uptime of 99.999% only allows for about 5 minutes of total downtime per year.
