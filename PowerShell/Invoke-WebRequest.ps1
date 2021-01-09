<#
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
#>

#https://imgur.com/v5nMzGf
Invoke-WebRequest -Uri "http://TMG01:8080/array.dll?Get.Routing.Script" -OutFile c:\Users\Public\TMG01_script.txt

#https://github.com/pc-aide/PowerShell/blob/master/TMG01_Script.txt
type c:\users\public\tmg01_script.txt | more
