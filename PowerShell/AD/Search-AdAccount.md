# Search-AdAccount

## E.g.
### 01 - search
````powershell
search-adAccount -lockedOut | ? {$_.SamAccountName -eq "UserName"} | Unlock-ADAccount
````
