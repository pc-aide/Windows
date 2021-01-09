# New-ADGroup

## Switch
* Mandatory:
  1) Name
  2) GroupScope
* Optional:
  1) Path
  2) Description
  
## ADGroup_list.csv
````csv
Name;Path;Description;GroupScope
Test;OU=Rus,DC=RU;group test  member;Global
````


## E.g.
### 01 - Basic
````powershell
#SWitch
param([parameter(Mandatory=$true)] [String]$FileCSV)
#List
$ADGroup_list = Import-Csv $FileCSV -Delimiter ";"

#############
# Variables #
#############
cls
$ErrorActionPreference = "stop"
Set-Location "C:\temp"

foreach($ADGroup in $ADGroup_list){
    Try{
        #Name
        $ADGroupName = $ADGroup.Name
        #Path
        $ADGroupPath = $ADGroup.Path
        #Description
        $ADGroupDescription = $ADGroup.Description
        #GroupScope
        $ADGroupGroupScope = $ADGroup.GroupScope
        #O/P
        Write-Host -ForegroundColor Yellow $ADGroupName $ADGroupPath $ADGroupDescription
        New-ADGroup -Name $ADGroupName -Path $ADGroupPath `
          -Description $ADGroupDescription -GroupScope $ADGroupGroupScope
    }
    catch{
        Write-Host $Error[0].Exception.Message -ForegroundColor Red
    }
}
````
