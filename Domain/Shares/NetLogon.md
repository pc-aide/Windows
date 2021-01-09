# Netlogon

## Acronym
* ACL : Access Control List
* SMB : Server Message Block
* UNC : Universal Naming Convention

## Protocol
* SMB

## Symbols
* (RX) : read & eXecute
* (OI) : object inherit
* (CI) : container inherit
* (IO) : inherit only
* (GR,GE) : 
  * GR : generic read
  * GE : generic execute

## Explorer
* \\\\%UserDnsDomain%\\netLogon\\
[<img src="https://i.imgur.com/mUJJOiw.png">](https://i.imgur.com/mUJJOiw.png)

## ACL
### Folder
````PowerShell
icAcls c:\Windows\Sysvol\sysvol\$env:UserDnsDomain\scripts
````
[<img src="https://i.imgur.com/tu7N0dfg.png">](https://i.imgur.com/tu7N0dfg.png)

### UNC
````PowerShell
icAcls \\$env:UserDnsDomain\netlogon
````
[<img src="https://i.imgur.com/udDEQ0Kg.png">](https://i.imgur.com/udDEQ0Kg.png)
#### Permissions
* no modify (create new folder)
[<img src="https://i.imgur.com/dgqO7YZ.png">](https://i.imgur.com/dgqO7YZ.png)

## cmdlet PS
````PowerShell
get-smbShare netLogon
````
[<img src="https://i.imgur.com/5P0XdYYg.png">](https://i.imgur.com/5P0XdYYg.png)
````PowerShell
get-smbShareAccess netLogon
````
[<img src="https://i.imgur.com/DenmquNg.png">](https://i.imgur.com/DenmquNg.png)
