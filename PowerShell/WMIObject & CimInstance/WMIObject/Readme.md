# Intro

## URL
* https://schemas.dmtf.org/wbem/cim-html/2.31.0+/CIM_ManagedElement.html
* https://docs.microsoft.com/en-us/windows/win32/wmisdk/wmi-system-classes

## Arguments
* query -- WQL 
    * Win32_* = 759 (get-cimCalss -className win32_*).count for NameSpace Default
    * Namespace = get-cimInstance -namespace root -className __Namespace
      * Default : root\cimv2
         * root\
            *  DEFAULT
            *  Subcription
            *  CIMV2
            *  msdtc
            *  Cli
            *  Security
            *  SecurityCenter2
            *  RSOP
            *  PEH
            *  StandardCimv2
            *  WMI
            *  directory
            *  Policy
            *  Interop
            *  Hardware
            *  ServiceModel
            *  SecurityModel
            *  Microsoft
            *  Appv
    * ComputerName

## Syntax
````PowerShell
#https://imgur.com/bTwYVmZ
Get-WmiObject -query "select * from win32_ComputerSystem" -NameSpace root\cimv2 -ComputerName Localhost
````

````PowerShell
#https://imgur.com/z6AX4v2
get-wmiObject -query "select * from win32_tpm" -namespace root\cimv2\security\MicrosoftTpm 
````

## Registry
````
#https://imgur.com/On8lyYS
Get-WmiObject -List StdRegProv -Namespace root\default -ComputerName localhost | fl *
````

## cmdlet PS
````PowerShell
#https://imgur.com/pt0eGuQ
# Select * (WildCard)
get-wmiObject -query "select * from win32_bios"
````

````PowerShell
#https://imgur.com/BuBnhqb
# Select <name>
get-wmiObject -query "select BiosVersion from win32_bios"
````

````PowerShell
#https://imgur.com/Q9ASqit
#Count ClasseName : Win32_* = 831 units
(get-cimClass -className win32_* | select cimClassName).count
````

## name __*
* __CLASS
* __DERIVATION
* __DYNASTY
* __GENUS
* __NAMESPACE
* __PATH
* __PROPERTY_COUNT
* __RELPATH
* __SERVER
* __SUPERCLASS
````PowerShell
get-wmiObject win32_bios | get-member -memberType properties | ? {$_.name -like "__*"}
````
[<img src="https://i.imgur.com/JPsOheX.png">](https://i.imgur.com/JPsOheX.png)
