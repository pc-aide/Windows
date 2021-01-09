<#
----------------------------------------------------

----------------------------------------------------
#>

#https://imgur.com/ftkxpNB
get-wmiObject -query "select * from win32_pnpEntity" | select Manufacturer,Name,Caption
