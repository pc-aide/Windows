# networkAdapterConfiguration

## get-member
* Name
  * IPAddress
  * MacAddress
  
## E.g.
````PowerShell
get-wmiObject win32_networkAdapterConfiguration | ?{$_.index -eq "9"} | select IPAddress,MacAddress
````
[<img src="https://i.imgur.com/uH1n11m.png">](https://i.imgur.com/uH1n11m.png)
