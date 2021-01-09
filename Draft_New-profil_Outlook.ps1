<#
---------------------------------------------------------------------------------
 
---------------------------------------------------------------------------------
#>

#Profile: c:\progra~2\Microsoft Office\Office15\MLCFG32.CPL

$Reg_path = (Get-Item "HKCU:\Software\Microsoft\Office\15.0\Outlook\Profiles\*").Name

if ($Reg_path -eq $null){"Vide"}else{"Non vide"}

 

#Setup

$App_Outlook = New-Object -ComObject Outlook.Application

$App_Outlook.Assistance

 
