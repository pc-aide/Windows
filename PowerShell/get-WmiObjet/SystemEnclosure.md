# SystemEnclousre

## get-member
* Name
   * Chassistypes
      * 3 = Desktop
      * 9 = Laptop
      * 10 = Notebook
      * 12 = Docking Station
      * 30 = Tablet - New SMBIOS 3.0 Specification
    
## Derivation
 * Cim_Chassis
 * Cim_PhysicalFrame
 * Cim_PhysicalPackage
 * Cim_PhysicalElement
 
 ## Dynasty
 * Cim_managedSystemElement
 
## E.g.
````PowerShell
get-wmiObject win32_SystemEnclosure | 
select ChassisTypes,Manufacturer,SerialNumber,Model
````
[<img src="https://i.imgur.com/wa8GTjQ.png">](https://i.imgur.com/wa8GTjQ.png)
