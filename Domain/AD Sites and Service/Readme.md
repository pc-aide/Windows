# Intro
* Single Domain Forest : VINO.MOSVA.RUS
* All DCs are in same AD Site : Default-First-Site-name
  * DC01 (172.18.72.5/24)
  * DC02 (172.18.72.6/24)
  * DC03 (192.168.72.5/24)
  * DC04 (10.10.72.5/24)

## Tools
* Repadmin.exe --diagnose Active Directory replication problems between domain controllers
  * repAdmin /queue --Display inbound replication requests that the
    DC needs to issue to become consistent with its source repliction partners
  * repAdmin /replSummary --The replSummary operation quickly & concisely
    summarizes the replication state & relative health of a forest

## Acronym

## Default:
* dsSite.msc
* [<img src="https://i.imgur.com/wJKu605.png">](https://i.imgur.com/wJKu605.png)

### Subnets
* Default : empty :
* [<img src="https://i.imgur.com/WhVUGMT.png">](https://i.imgur.com/WhVUGMT.png)
* New Subnet : [<img src="https://i.imgur.com/uDA1VdE.png">](https://i.imgur.com/uDA1VdE.png)
  * Location: [<img src="https://i.imgur.com/yRmaeQo.png">](https://i.imgur.com/yRmaeQo.png)
  * cmdlet PS 
  ````Powershell
  get-ADReplicationSubnet -filter * | ? {$_.name -like "*10.56.0.0*"} | select Location,Site
  ````
  * [<img src="https://i.imgur.com/fzdLIl5g.png">](https://i.imgur.com/fzdLIl5g.png)
