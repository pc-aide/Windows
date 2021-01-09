<#
-------------------------------------------------------------------------------------------
    SRC: https://stackoverflow.com/questions/2434133/progress-during-large-file-copy-copy-item-write-progress
-------------------------------------------------------------------------------------------
#>
#Varibales
$Path_SRC = <path>
$Path_Destination = <path>
 
#
$FOF_CREATEPROGRESSDLG = "&H0&"
$objShell = New-Object -ComObject "Shell.Application"
$objFolder = $objShell.NameSpace($Path_Destination)
$objFolder.CopyHere($Path_SRC, $FOF_CREATEPROGRESSDLG)
