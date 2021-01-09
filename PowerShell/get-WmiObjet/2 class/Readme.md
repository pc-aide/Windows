# 2 Class

## Alias
* Foreach - %
* Format-Table - ft

## Class
### Win32_ComputerSystem
* Properties
    * Model
    * Name
    * Manufacturer

## E.g.
* 2 Headers
````PowerShell
Import-Csv "C:\temp\Computers.csv" |
%{
    # Temp
    $System = "" |
    # Headers
    Select Host,CPU
    
    # WMI 01
    $Server = Get-WmiObject win32_ComputerSystem `
    -ComputerName $_.Computer
    $System.Host = $Server.Name

    # WMI 02
    $server = Get-WmiObject win32_Processor `
    -ComputerName $_.computer | select -First 1
    $System.CPU = $Server.Name

    #OutPut
    $System
} |
ft -AutoSize -Wrap
````
[<img src="https://i.imgur.com/BsgWj9s.png">](https://i.imgur.com/BsgWj9s.png)
* 4 Headers
