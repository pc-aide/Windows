# SLA
* it comes from ITIL. An SLA is a **commitment between a service provider & its internal or external customers**
* An SLA outlines what the service provider will provide to its customers & the standards the provider will meet

## Doc
* [SLA](https://azure.microsoft.com/en-us/support/legal/sla/)

## Acronym
* SLA - Service-level agreement
* ITIL - Information Technology Infrastructure Library

## Azure SLA
* In the context of Azure an SLA details the commitments for **uptime** & **connectivity** Microsoft
  has for its services. Different services in Azure will have different SLA os it is important to know
  a services SLA before consuming it

## Composite SLA
* A Composite SLA in Azure will involve more than one service supporting an application.
  Each service will have different levels of **availability** & **connectivity**
  
### E.g.
* Imagine you have an app that runs on **Azure App service web app** for the front end & an
  **Azure SLQ db** on the backend
  * Web app = 99.95% SLA
  * SLQ db = 99.99% SLA
  * --------------------
  * ∑services = (99.95%) * (99.99%) = 99.940005% composite SLA

* For raise this composite SLA, we can used the replicate for example

## Determine the appropriate SLA
* Cost & complexity
    * Balance of cost & complexity with higher availability
* Dependencies
    * Internal & external dependencies of the application
* Recovery metrics
    * **Recovery time objective(RTO)** = maximum acceptable time an application is unavailable afte an incident
    * **Recovery point objective(TPO)** = maximum duration of data loss that's acceptable during a disaster
* Availability metrics
    * **Mean time to recover(MTTR)** = average time is takes to restore a component after a failure
    * **Mean time between failures*MTBF)** = how long a component can reasonably expect to last between outages
* Composite SLA
    * Inclusive services & their SLAs making up the overall SLA of the application

## Most Comprehensive Resiliency & Best SLA
[<img src="https://i.imgur.com/rCXoOiT.png">](https://i.imgur.com/rCXoOiT.png)
