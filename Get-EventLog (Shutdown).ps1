<#
-----------------------------------------------------------------------------------------------
    O/P > https://i.imgur.com/GQVGbiH.png  
    EventID:
        1074:
        6008:
        1076:
-----------------------------------------------------------------------------------------------
#>
 
#Restart
Get-EventLog System | Where-Object {$_.EventID -eq "1074"} | ft Machinename, TimeWritten, UserName, EventID, Message -AutoSize -Wrap | more
