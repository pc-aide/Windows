# wget

## Acronym
* ISP - Internet Service Provider

## IPv4 Public
````PowerShell
wget ifconfig.me | select @{Name="IPv4 Public";Expression{$_.Content}}
````
[<img src="https://i.imgur.com/ahnRU2S.png">](https://i.imgur.com/ahnRU2S.png)
