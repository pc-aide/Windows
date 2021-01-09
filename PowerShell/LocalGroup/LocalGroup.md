# LocalGroup

## CMD
````Batch
REM https://imgur.com/GEpATpe
net localgroup
````

## cmdlet
````PowerShell
#https://imgur.com/OAlsUi8
get-localGroup
````

````PowerShell
#Syntax Add-LocalGroupMember [-Name] <string> [-Member] <LocalPrincipal[]>
#Remote Desktop Users (SID: s-1-5-32-555)
add-localGroupMember -sid s-1-5-32-555 -member vino\rdsUser
````

````PowerShell
#Error: Failed to compare two elements in the array (error on Surface Pro 7)
#Used CimInstance cmdLet
#https://imgur.com/FJGGKja
get-LocalGroupMember -group administrators

````
