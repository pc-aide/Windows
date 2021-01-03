# List_NIC

## e.g.
### 01 - 2x NICs
````powershell
get-item hklm:\system\ControlSet001\Services\Tcpip\Parameters\Interfaces\* | findstr /i DhcpIPAddress
````
[<img src="https://i.imgur.com/ASEDGg4.png">](https://i.imgur.com/ASEDGg4.png)
