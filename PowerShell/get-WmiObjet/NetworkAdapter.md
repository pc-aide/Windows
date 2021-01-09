# NetworkAdapter

## get-member
* Name
  * MacAddress
  * AdapterType
  * DeviceID
  * Name
  * Speed
  * Manufacturer

## Eg
````PowerShell
get-wmiObject win32_networkAdapter | ?{$_.DeviceID -eq "9"} | fl
````
[<img src="https://i.imgur.com/XeQO1KE.png">](https://i.imgur.com/XeQO1KE.png)
