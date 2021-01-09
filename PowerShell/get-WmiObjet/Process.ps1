<#
-------------------------------------------------------------------------------------------
   
-------------------------------------------------------------------------------------------
#>
 
#https://imgur.com/CA4cTNv
Get-WmiObject win32_Process  | where {$_.name -like "*BizAgi.Installation.App*"} | select name,CommandLine | fl
