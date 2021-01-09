# Pipeline

## cmdlet PS
````Powershell
#https://imgur.com/wtdCZwG
get-service | ? {$_.StartType -eq 'automatic'}
````
