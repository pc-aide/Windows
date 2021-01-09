# 08 Secuirity, responsibility, & trust in Azure

## Acronym
* IaaS - Infrastructure as a Service
* PaaS - Platform as a Service
* SaaS - Software as a Service
* cfg - configuration
* MFA - Multi-Factor Authentication
* vnet - virtual network
* cred - credential (permissions)
* RBAC - Role-based access control
* BYOD - Bring your own device
* BYOK - Bring your own key
* AuthN - Authencation
* AuthZ - Authorization
* AD - Active Directory
* SSO - Single-Sign-On
* B2B - Business to Business
* B2C - Business to Customer
* OTP - One Time password (token)
* PIM - Privileged Identity Management
* TDE - Transparent data encryption
* DDoS - Distribute Denial of Service
* NSG - Network Security Group
* AIP - Azure Information Protection
* SAST - Static Analysis Security Testing
* DAST - Dynamic Application Security Testing

## Overview
[<img src="https://i.imgur.com/xaKEcuq.png">](https://i.imgur.com/xaKEcuq.png)

## URL
* https://docs.microsoft.com/en-ca/learn/modules/intro-to-security-in-azure/1-introduction

## Event Hubs
[<img src="https://i.imgur.com/HT6q6VP.png">](https://i.imgur.com/HT6q6VP.png)

* Security Advantages of Cloud Era:

[<img src="https://i.imgur.com/iSNtOyB.png">](https://i.imgur.com/iSNtOyB.png)

## Responsibility
* E.g
  * On-premise
  * IaaS
    * OS patching & cfg
    * vnet cfg
    * app
    * data
    * cred
  * PaaS
    * app (code)
    * data
  * SaaS
    * app management (Exhange Online, SharePoint Online, etc)

[<img src="https://i.imgur.com/zE0sMfQ.png">](https://i.imgur.com/zE0sMfQ.png)

## layout to security
* Defense in depth is a strategy that employs a series of **mechanisms to slow** the advance of an attack
  aimed at acquiring unauthorized access to information.

[<img src="https://i.imgur.com/TEmoMo5.png">](https://i.imgur.com/TEmoMo5.png)

## Security Center
[<img src="https://i.imgur.com/GnHKohP.png">](https://i.imgur.com/GnHKohP.png)

### Princing
* $15 per node per month

* Incident response:

[<img src="https://i.imgur.com/QJaziCF.png">](https://i.imgur.com/QJaziCF.png)

## Authentifcation & authorization
* Authentification: your identity (Full Name)
* Authorization
  * Access:
    * E.g:
      * allow: storage, code
      * deny: vnet, VMs :
      
[<img src="https://i.imgur.com/0kVQk96.png">](https://i.imgur.com/0kVQk96.png)

## Azure Active Directory
* Synchro with on-premise AD < synchro > Azure AD
* SSO
 * One ID with many application (cred)
* B2B
  * Manager your guest users & external partners
* B2C
 * Customize & control how users sign (up,in) & manage their profiles when using your apps with services
 * MFA
  * Something you know
    * Answer to a security question (what is your favory dog)
  * Something you possess
    * google authentiction (OTP)
  * Something you are
    * Your fingerprint or face
    
## RBAC
* Roles are sets of permissions
 * like "read-only" or "contributor"
* Azure AD roles & administrators:

[<img src="https://i.imgur.com/ocmyxCf.png">](https://i.imgur.com/ocmyxCf.png)

* Scope:

[<img src="https://i.imgur.com/Ne3TskZ.png">](https://i.imgur.com/Ne3TskZ.png)

## PIM
[<img src="https://i.imgur.com/JEMfyp5.png">](https://i.imgur.com/JEMfyp5.png)

## Encryption
* 2 top-level types of encryption
 * Symmetric
  * Uses the same key to encrypt & decrypt the data
   * a desktop passwoed manager application
    * Bitlocker -> Symmetric key encryption
 * Asymmetric
  * Uses a public key & private key pair
   * TLS (used in HTTPS)
   
### Encryption at rest
* The data that ha been sotred on a physical medium
 * disk of a server
 * database
 * data stored in a storage account
* this data (rest) is unreadable without the keys & secrets needed to decrypt it

[<img src="https://i.imgur.com/IAVsh0Y.png">](https://i.imgur.com/IAVsh0Y.png)

### Encryption in transit
* The data actively moving from one location to another
 * VPN (e.g : communication between 2 nodes)
  * HostA <> HostB
* HTTPS or VPN
* Encrypting data in tansit protects the data from outside observers (sniffing network)

[<img src="https://i.imgur.com/OB2gXvu.png">](https://i.imgur.com/OB2gXvu.png)

* Key vaults
  * For storing your application secrets:

[<img src="https://i.imgur.com/X7Pj8Wx.png">](https://i.imgur.com/X7Pj8Wx.png)

## App Service Certificates
[<img src="https://i.imgur.com/lORd88i.png">](https://i.imgur.com/lORd88i.png)

## DDoS
* Basic
 * Default automatically enabled
* Standard
 * Volumetric attacks
  * to flood th enetwork layer with a substantial amount of seemingly (ping of death) legitimate traffic
 * Protocol attack
  * These attacks render a target inacessible, by exploting a weakness in the layer 3 & layer 4 protocol stack
 * Resource (application) layer attack
  * These attacks target web application packets to disrupt the transmission of data between hosts

[<img src="https://i.imgur.com/stXyWFm.png">](https://i.imgur.com/stXyWFm.png)

* Metrics:

[<img src="https://i.imgur.com/hi1OHQ1.png">](https://i.imgur.com/hi1OHQ1.png)

* DDoS protection plans:

[<img src="https://i.imgur.com/xls6mU5.png">](https://i.imgur.com/xls6mU5.png)

## ExpressRoute circuits
* private connection from your on-premises to Azure Cloud:

[<img src="https://i.imgur.com/mjskuhR.png">](https://i.imgur.com/mjskuhR.png)

## Azure Information Protection
* to protect your document & email : 
[<img src="https://i.imgur.com/muGIy7Y.png">](https://i.imgur.com/muGIy7Y.png)

* Icon:

[<img src="https://i.imgur.com/Ww9QXBW.png">](https://i.imgur.com/Ww9QXBW.png)
