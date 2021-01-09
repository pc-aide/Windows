# 05 Azure networking options

## Acronym
* NSG - Network Security Group
* vnet - virtual network
* HA - High Availability
* FB - FaceBook
* DDoS - Distributed Denianl of Service
* LB - Load Balacing
* WAF - Web Application Firewall
* CDN - Content Delivery Network

## Doc
* [N-tier architecture style](https://docs.microsoft.com/en-us/azure/architecture/guide/architecture-styles/n-tier)

## URL
* https://docs.microsoft.com/en-ca/learn/modules/intro-to-azure-networking/2-deploy-to-azure

## Overview
[<img src="https://i.imgur.com/eKNvDqB.png">](https://i.imgur.com/eKNvDqB.png)

## Benefits of Loosely Coupled Architectures
* Larger enterprise systems are often composed of multiple inter-connected applications and services that work together. 

### E.g
* Component #01 most power than #02:

[<img src="https://i.imgur.com/Uavhlzx.png">](https://i.imgur.com/Uavhlzx.png)

* New compoent #03 in architecture:

[<img src="https://i.imgur.com/TX3d3Qy.png">](https://i.imgur.com/TX3d3Qy.png)

* The data are bigger

[<img src="https://i.imgur.com/xfieP2o.png">](https://i.imgur.com/xfieP2o.png)

## N-tier architecture
* An N-tier architecture divides an application into logical layers and physical tiers.

[<img src="https://i.imgur.com/BW9YbsF.png">](https://i.imgur.com/BW9YbsF.png)

### E-Commerce web
* Three-tier refers to an n-tier application that has three tiers
  * The **web tier** provides the web interface to your users through a browser.
  * The **application tier** runs business logic.
  * The **data tier** includes databases and other storage that hold product information and customer orders.

### Request from a user to the data tier
* VMs
  * Web tier -> App tier -> Data tier
[<img src="https://i.imgur.com/NUCZWDM.png">](https://i.imgur.com/NUCZWDM.png)

#### Topology
* e-commerce
  * web tier -> chrome
  * app tier -> app ...
  * data tier -> info client
    * port 3306 - default MySQL

[<img src="https://i.imgur.com/UzzraeB.png">](https://i.imgur.com/UzzraeB.png)

## vnet
* NSG
  * allows or denies inbound network traffic to your Azure resource
  
[<img src="https://i.imgur.com/EnNCt9g.png">](https://i.imgur.com/EnNCt9g.png)
  
* Subnets
* Virtual network gateways

[<img src="https://i.imgur.com/Jj44Lpn.png">](https://i.imgur.com/Jj44Lpn.png)

* Communcation between 2 different regions (Asia-Europe)
  * Network peering

## Load Balancer
* It  distributes traffic evenly amoung each system in a pool

[<img src="https://i.imgur.com/jIXiBva.png">](https://i.imgur.com/jIXiBva.png)
[<img src="https://i.imgur.com/kSRwDDX.png">](https://i.imgur.com/kSRwDDX.png)

* Multi-tier architecture:

[<img src="https://i.imgur.com/8UgKGj5.png">](https://i.imgur.com/8UgKGj5.png)

### HA
* A service that's up and running for a long period of time.
 * E.g.: FB - it gauranteed to be run 99.999% of the time
 
 ### Resiliency
 * Asystem's ability to stay operational during abnormal conditions.
  * Natural disaters
  * System maintenance (panned & unplanned: updates & security patches)
  * Spkies in traffic to your site
  * Threats made by malicours parties, such as DDoS
  
### Application gateways
* Application Gateway is a load balancer designed for web applications (HTTP)

[<img src="https://i.imgur.com/1rmbggf.png">](https://i.imgur.com/1rmbggf.png)

* Benefits :
 * Cookie affinity
  *  Useful when you want to keep a user session on the same backend server.
 * SSL termination
  * Application Gateway can manage your SSL certificates and pass unencrypted traffic to
    the backend servers to avoid **encryption/decryption** overhead. It also supports full
    end-to-end encryption for applications that require that.
 * Web application firewall
 * URL rule-based routes
  * Application Gateway allows you to route traffic based on URL patterns, source IP address
    and port to destination IP address and port. This is helpful when setting up a CDN.
 * Rewrite HTTP headers
  * You can add or remove information from the inbound and outbound HTTP headers of each
    request to enable important security scenarios, or scrub sensitive information such as server names.
 
### DNS
* Name (google.com)
* IPv4 public (172.217.1.14)

[<img src="https://i.imgur.com/mxOnHgQ.png">](https://i.imgur.com/mxOnHgQ.png)

* DNS zones:

[<img src="https://i.imgur.com/1aebPZH.png">](https://i.imgur.com/1aebPZH.png)

* private DNS  zones:

[<img src="https://i.imgur.com/drP0tzO.png">](https://i.imgur.com/drP0tzO.png)

## Latency
* Factor is **distance** for delivers std HTML, CSS, JavaScript, images, and so on
 * a distance of around 400 miles
 * a distance of around 4,0000 miles

* Cross geographic regions
 * From Ca <> China : Latency high
 * From Ca <> Ca : very low 
 
### E.g
* 01
 * MyIP: Ca
 * URL: https://docs.microsoft.com
 * Latency: 48 ms

[<img src="https://i.imgur.com/sjZIAE4.png">](https://i.imgur.com/sjZIAE4.png)

* 02
 * MyIP: Fr
 * URL: idem
 * Latency: 935 ms
 
[<img src="https://i.imgur.com/7Qdq4zw.png">](https://i.imgur.com/7Qdq4zw.png)

### Scale out to different regions
* To reduce latency is to provide exact copies (cache) of your service in more than one region

[<img src="https://i.imgur.com/LINg3hd.png">](https://i.imgur.com/LINg3hd.png)

#### Traffic Manager to route users to the closest endpoint
[<img src="https://i.imgur.com/YxUAnTq.png">](https://i.imgur.com/YxUAnTq.png)

* Traffic Manager profiles:

[<img src="https://i.imgur.com/I0spdT3.png">](https://i.imgur.com/I0spdT3.png)
