<#
---------------------------------------------------------------------------  
    Name                           Version          Arch
    ----                           -------          ------
    Skype Entreprise Basic 2016    16.0.4849.1000   32
 
 
    Shortcut : C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Skype Entreprise 2016.lnk
 
    ------------------------
    https://imgur.com/KHhUZuP
    -------------------------
        /Uninstall [ProductID] -> Where ProductID can find out into the SETUP.xml for the product
---------------------------------------------------------------------------
#>
 
$Path_InstDir = "${env:ProgramFiles(x86)}\Common Files\microsoft shared\OFFICE16\Office Setup Controller"
$data = @"
<?xml version="1.0"?>
<Configuration Product="Lync">
<Display AcceptEula="yes" SuppressModal="yes" CompletionNotice="no" Level="none"/>
</Configuration>
"@
#xml
$data | out-file "$Path_InstDir\RemoveSkype.xml"
 
#Time uninstall ~1 min
Stop-Process -Name lync -Force -ErrorAction 0
Start-Process -Wait "$Path_InstDir\Setup.exe" -ArgumentList "/uninstall lyncEntry","/config .\RemoveSkype.xml"
