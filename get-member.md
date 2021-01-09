# get-member

## Syntax
get-member 
* [-InputObject <PSObject>]
* [[-MemberType <PSMemberTypes>]

## Args
* -memberType
  * AliasProperty
  * Method
  * Property
  * PropertySet
  * ScriptMethod

## Pipeline
* often used after pipeline

## E.g
````PowerShell
get-wmiObject win32_operatingSystem | get-member
````
[<img src="https://i.imgur.com/WhgAiwF.png">](https://i.imgur.com/WhgAiwF.png)

### ScriptMethod
````PowerShell
get-wmiObject win32_OperatingSystem | get-member -MemberType ScriptMethod
````
[<img src="https://i.imgur.com/K8DT0nm.png">](https://i.imgur.com/K8DT0nm.png)

### Property
````PowerShell
get-cimInstance win32_bios | get-member -memberType property
````
[<img src="https://i.imgur.com/hq9M800.png">](https://i.imgur.com/hq9M800.png)
