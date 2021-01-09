# GroupUser

## Remote Desktop Usres
````PowerShell
get-wmiObject win32_groupUser |
?{$_.GroupComponent -math 'remote desktop users'} |
forEach-Object {[wmi]$_.partComponent} | select Caption
````
[<img src="https://i.imgur.com/PodnWLC.png">](https://i.imgur.com/PodnWLC.png)
