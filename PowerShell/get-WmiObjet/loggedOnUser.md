# loggedOnUser

## get-member
* Name
  * Antecedent
  
## Eg
````PowerShell
get-wmiObject win32_loggedOnUser -computer E99731 | ?{$_.Antecedent -like "*domain=*RUS*"} | select Antecedent
````
[<img src="https://i.imgur.com/ZnOiv2S.png">](https://i.imgur.com/ZnOiv2S.png)
