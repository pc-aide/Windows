# Tools

## Acronym
* CCM - Client Configuration Manager
* CM - Configuration Manager

## Doc
* [CM-2012-client-cmd-list](https://systemcenterdudes.com/configuration-manager-2012-client-command-list/)
* [Powershell_pc_aide](https://pastebin.com/Nd5FFx1n)

## cmd for client
|n|CM        |Command|
|-|----------|-------|
|1|Properties|control smsCfgRc|
|2|

---

## Cfg Manager Client Scan Trigger with WMI
* Need elevated: yes
* The Syntax:
  * `WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule {TriggerIDHere} /NOINTERACTIVE`


|n|Client Agent                           |WMI|
|-|---------------------------------------|---|
|1|Application Deployment Evaluation Cycle|WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000121}" /NOINTERACTIVE|
|2|Discovery Data Collection Cycle|WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000003}" /NOINTERACTIVE|
|3|File Collection Cycle|WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000010}" /NOINTERACTIVE|
|4|Hardware Inventory Cycle|WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000001}" /NOINTERACTIVE|
|5|Machine Policy Retrieval Cycle|WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000021}" /NOINTERACTIVE|
|6|Machine Policy Evaluation Cycle|WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000022}" /NOINTERACTIVE|
|7|Software Inventory Cycle|WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000002}" /NOINTERACTIVE|
|8|Software Metering Usage Report Cycle|WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000031}" /NOINTERACTIVE|
|9|Software Updates Assignments Evaluation Cycle|WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000108}" /NOINTERACTIVE|
|10|Software Update Scan Cycle|WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000113}" /NOINTERACTIVE|
|11|State Message Refresh|WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000111}" /NOINTERACTIVE|
|12|User Policy Retrieval Cycle|WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000026}" /NOINTERACTIVE|
|13|User Policy Evaluation Cycle|WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000027}" /NOINTERACTIVE|
|14|Windows Installers Source List Update Cycle|WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000032}" /NOINTERACTIVE

---

## Machine Policy Retrieval & Evaluation Cycle
````powershell
# Time: ~2 min + 15 sec if nothing, try again the query + F5 softwareCenter:
Invoke-WmiMethod -Namespace "Root\CCM" -Class SMS_Client -Name TriggerSchedule `
  -ArgumentList "{00000000-0000-0000-0000-000000000021}" ; cmd /c start softwareCenter:
````
