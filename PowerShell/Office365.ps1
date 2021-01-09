<#
--------------------------------------------------------
  Installed App.: Office 2013 Pro x86
  Disabled Features : (Outlook,Lync)2013  
  
  Prerequisites: 
    setup.exe (ODT365.exe)
    Office folder already downloaded (size 2.19Go)
--------------------------------------------------------
#>
                                            #############    
                                            # Variables #     
                                            #############     
$host.ui.RawUI.WindowTitle = "Office365.ps1"
$ErrorActionPreference = "stop"

                                            ###############   
                                            # ODT + Trace #     
                                            ###############  

#Folder Product ID
$Fol_ProductID = (Get-ChildItem "C:\progra~2\Common Files\microsoft shared\OFFICE15\Office Setup Controller\" | Where {$_.name -like '*ProPlus*'}).name
#Fichier non present
if (!(Test-Path .\Office365.xml)){
#Office365.xml ($File_Office365)
$File_Office365 = @"
<Configuration>
    <Info Description="PC Aide" />
    <Add OfficeClientEdition="32" Channel="Broad" MigrateArch="TRUE">
    <Product ID="O365ProPlusRetail">
      <Language ID="fr-fr" />
      <ExcludeApp ID="Access" />
      <ExcludeApp ID="Excel" />
      <ExcludeApp ID="Groove" />
      <ExcludeApp ID="OneDrive" />
      <ExcludeApp ID="OneNote" />   
      <ExcludeApp ID="PowerPoint" />
      <ExcludeApp ID="Publisher" />  
      <ExcludeApp ID="Teams" />
      <ExcludeApp ID="Word" />   
    </Product>
  </Add>
  <Property Name="SharedComputerLicensing" Value="0" />
  <Property Name="PinIconsToTaskbar" Value="FALSE" /> 
  <Property Name="SCLCacheOverride" Value="0" />
  <Property Name="AUTOACTIVATE" Value="0" />
  <!-- E.g.: Shutdown if (Lync,Outlook,etc) is ON -->
  <Property Name="FORCEAPPSHUTDOWN" Value="TRUE" /> 
  <Property Name="DeviceBasedLicensing" Value="0" />
  <Updates Enabled="TRUE" />
  <RemoveMSI>
    <IgnoreProduct ID="$Fol_ProductID" />
  </RemoveMSI>
  <AppSettings>
    <Setup Name="Company" Value="PC Aide" />
  </AppSettings>
  <Display Level="None" AcceptEULA="TRUE" />
  <!-- E.g the file.log: <Hostname>-<TimeStep>.log -->
  <Logging Level="Standard" Path="C:\Temp" />
</Configuration>
"@
#xml
$File_Office365 | out-file .\Office365.xml
}

#Disabled Features
#%programData%\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\
$Path_InstDir = "${env:ProgramFiles(x86)}\Common Files\microsoft shared\OFFICE15\Office Setup Controller\"
if (!(Test-Path "$Path_InstDir\Disabled_Outlook_and_Lync.xml")){
$Disabled_Outlook_and_Lync = @"
<Configuration Product="Standard">
    <Logging Type="standard" Path="C:\Temp" Template="Disabled_Lync_and_outlook.txt" />
    <!-- Display Level="None" | "Basic" | "Full"(default) -->
    <Display Level="None" CompletionNotice="No" SuppressModal="Yes"
    AcceptEula="Yes" NoCancel="Yes" />
    <!-- Path of the folder on the user's computer where the product is installed -->
    <INSTALLLOCATION Value="%ProgramFiles(x86)%\Microsoft Office" />
    <Setting Id="SETUP_REBOOT" Value="never" />
    <!-- Disabled Outlook -->
    <OptionState State="Absent" Children="Force" Id="OUTLOOKFiles" />
    <!-- Disabled Skype 2015 -->
    <OptionState State="Absent" Children="Force" Id="LyncCoreFiles" />
</Configuration>
"@
#xml
$Disabled_Outlook_and_Lync | Out-File "$Path_InstDir\Disabled_Outlook_and_Lync.xml"
}

#
Write-Host "Disabled feature Outlook2013 + Lync2013... (Time: ~1min)" -ForegroundColor Green
Write-Host "`Install Office 365-x86... (Time: ~6min)" -ForegroundColor Green
#get-process -name *click*,*setup -> O/P: 2x OfficeClickToRun + Setup
.\setup.exe  /configure .\Office365.xml ; Start-Process "$Path_InstDir\setup.exe" -Wait -ArgumentList "/modify $Fol_ProductID /config .\Disabled_Outlook_and_Lync.xml"

                                            #######    
                                            # GPO #     
                                            #######

#GPO-Office2013-{COM,USE} 
Write-Host "GpUpdate ... (Time: ~1min)" -ForegroundColor Green
#Simulate to send a keymap
echo N | gpupdate /force
Write-Host "`rL'ordinateur va redemarrer ..." -ForegroundColor Green
Restart-Computer -Force
