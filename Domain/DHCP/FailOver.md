# FailOver

## Acronym
* O/P - Out Put

## Prereq
1) Least 2x DHCP
2) ICMPv4: on 

## Doc
* [DHCP console icons](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn800670(v=ws.11)?redirectedfrom=MSDN)

|n|Definition|png|
|-|----------|---|
|1|Failover is configured on the DHCP Server | [<img src="https://i.imgur.com/nTDBtLO.png">](https://i.imgur.com/nTDBtLO.png) |

## Feature
````powershell
Add-WindowsFeature dhcp -IncludeManagementTools
````
[<img src="https://i.imgur.com/Turhqv4.png">](https://i.imgur.com/Turhqv4.png)

---

## dhcpMgmt.msc
* list DHCP:

[<img src="https://i.imgur.com/piPg6cO.png">](https://i.imgur.com/piPg6cO.png)

* DHCP running (green)
  * IPv4\Configure Failover:
  
[<img src="https://i.imgur.com/vtoRybl.png">](https://i.imgur.com/vtoRybl.png)


* Introduction to DHCP Failover:

[<img src="https://i.imgur.com/yCmD8ix.png">](https://i.imgur.com/yCmD8ix.png)

* Partner Server/.../**Add Server**:

[<img src="https://i.imgur.com/5MGD2NL.png">](https://i.imgur.com/5MGD2NL.png)

[<img src="https://i.imgur.com/rwxKHsv.png">](https://i.imgur.com/rwxKHsv.png)

* cfg partner
  * Max Client Lead Time: 5m
  * Mode: Hot standby
  * Role of Partner Server: Active
  * State Switchover Interval: 5m
  * CheckBox: Shared Secret
  
[<img src="https://i.imgur.com/TrbDRWd.png">](https://i.imgur.com/TrbDRWd.png)

[<img src="https://i.imgur.com/J833wnb.png">](https://i.imgur.com/J833wnb.png)

[<img src="https://i.imgur.com/0ge6f2O.png">](https://i.imgur.com/0ge6f2O.png)

### Test
* Client: W1909
* DHCP Dynamic: yes
* List DHCP:
  * DHCP01: Off
  * DHCP02: On
````powershell
ipconfig /renew
```
[<img src="https://i.imgur.com/mHWhNY0.png">](https://i.imgur.com/mHWhNY0.png)
