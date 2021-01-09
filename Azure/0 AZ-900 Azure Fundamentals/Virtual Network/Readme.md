# Virtual Network

## Topology
* Classic
  * vnet-01
    * Subnet{1..4}
    * NSG{1..2}
    * 2x VMs per subnet
  
[<img src="https://i.imgur.com/OhCCTdW.png">](https://i.imgur.com/OhCCTdW.png)

* Application Security group:
  * No more NSG
  
[<img src="https://i.imgur.com/GVXAbLs.png">](https://i.imgur.com/GVXAbLs.png)

## Strategy
* N-Tier applications
  * Each tier would have its own application groups
* DMZ
  * Resources in your DMZ would be added to their own application security groups
* Automation
  * When automating deployments include application security group
