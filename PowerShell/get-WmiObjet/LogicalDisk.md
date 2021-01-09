# LogicalDisk

## Alias
* foreach : %
* ft : format-Table

## Varibales
* $_ : Contains the current object in the pipeline object. You can use this variable in commands that perform an action on every object or on selected objects in a pipeline

## get-member
* Property
  * FreeSpace (uint64)
  * Size (uint64)

## E.g. :
````PowerShell
$Mount_UsB = (gwmi win32_logicaldisk | where {$_.volumeName -eq "Volume_Name"}).deviceID
````

## Double & uint64 (empty value for output)
* freepsace
````Powershell
get-wmiObject win32_logicalDisk | select freeSpace
````
[<img src="https://i.imgur.com/dKYRjkT.png">](https://i.imgur.com/dKYRjkT.png)
````PowerShell
get-wmiObject win32_LogicalDisk | select @{N="Free(GB)";E={$_.FreeSpace/1gb}}
````
[<img src="https://i.imgur.com/iK5ce0J.png">](https://i.imgur.com/iK5ce0J.png)

 * Empty wiht round
````PowerShell
#Syntax : Round(Value,the number to round after dot)
get-wmiObject win32_LogicalDisk | select @{Name="Free(GB)";Expression={[math]::round($_.freespace/1gb,2)}}
````
[<img src="https://i.imgur.com/iHzs5lu.png">](https://i.imgur.com/iHzs5lu.png)

  * integer
````PowerShell
get-wmiObject win32_LogicalDisk | select @={N="Free(GB)";E={$_.FreeSpace/1gb -as [int]}}
````
[<img src="https://i.imgur.com/d0IBqmk.png">](https://i.imgur.com/d0IBqmk.png)

* Foreach
````PowerShell
$env:ComputerName |
%{
 get-wmiObject win32_LogicalDisk `
 -ComputerName $_ -filter "DeviceId='C:'" |
 ft SystemName, @{N="Free(GB)";E={$_.Freespace/1gb -as [int]}} -autoSize
}
````
[<img src="https://i.imgur.com/pVWHMQ9.png">](https://i.imgur.com/pVWHMQ9.png)
