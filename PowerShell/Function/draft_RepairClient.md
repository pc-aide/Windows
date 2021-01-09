# RepairClient

## E.g
````powershell
function repairclient([String] $strComputer) {
  $SMSCli = [wmiclass] "\\$strComputer\root\ccm:sms_client"
  $SMSCli.RepairClient()
}
````
