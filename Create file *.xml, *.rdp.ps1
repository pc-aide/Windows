<#
----------------------------------------
    SRC: https://community.spiceworks.com/topic/2146719-powershell-script-to-create-xml-file
----------------------------------------
#>
 
#https://imgur.com/aJxoVjn
$data = @"
<LayoutModificationTemplate xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout" Version="1"
xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification">
 <LayoutOptions StartTileGroupCellWidth="6" />
 <DefaultLayoutOverride>
   <StartLayoutCollection>
     <defaultlayout:StartLayout GroupCellWidth="6">
       <start:Group Name="">
      <start:Tile Size="2x2" Column="0" Row="0" AppUserModelID="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" />
                 </start:Group>
       <start:Group Name="Create">
         <start:Tile Size="2x2" Column="1" Row="0" AppUserModelID="microsoft.windowscommunicationsapps_8wekyb3d8bbwe!Microsoft.WindowsLive.Calendar" />
       </start:Group>
     </defaultlayout:StartLayout>
   </StartLayoutCollection>
 </DefaultLayoutOverride>
<CustomTaskbarLayoutCollection PinListPlacement="Replace">
     <defaultlayout:TaskbarLayout>
       <taskbar:TaskbarPinList>
         <taskbar:DesktopApp DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\File Explorer.lnk" />
         <taskbar:DesktopApp DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Google Chrome.lnk" />
         <taskbar:UWA AppUserModelID="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
       </taskbar:TaskbarPinList>
     </defaultlayout:TaskbarLayout>
   </CustomTaskbarLayoutCollection>
</LayoutModificationTemplate>
"@
 
#xml
$data | out-file "c:\test.xml"
 
#RDP (https://imgur.com/MevNkn3)
$rdp = @"
screen mode id:i:2
use multimon:i:0
desktopwidth:i:800
desktopheight:i:600
session bpp:i:32
winposstr:s:0,3,0,0,800,600
compression:i:1
keyboardhook:i:2
audiocapturemode:i:0
videoplaybackmode:i:1
connection type:i:7
networkautodetect:i:1
bandwidthautodetect:i:1
displayconnectionbar:i:1
enableworkspacereconnect:i:0
disable wallpaper:i:0
allow font smoothing:i:0
allow desktop composition:i:0
disable full window drag:i:1
disable menu anims:i:1
disable themes:i:0
disable cursor setting:i:0
bitmapcachepersistenable:i:1
full address:s:hpv01
audiomode:i:0
redirectprinters:i:1
redirectcomports:i:0
redirectsmartcards:i:1
redirectclipboard:i:1
redirectposdevices:i:0
autoreconnection enabled:i:1
authentication level:i:2
prompt for credentials:i:0
negotiate security layer:i:1
remoteapplicationmode:i:0
alternate shell:s:
shell working directory:s:
gatewayhostname:s:
gatewayusagemethod:i:4
gatewaycredentialssource:i:4
gatewayprofileusagemethod:i:0
promptcredentialonce:i:0
gatewaybrokeringtype:i:0
use redirection server name:i:0
rdgiskdcproxy:i:0
kdcproxyname:s:
 
"@
 
$rdp | out-file "c:\HPV01.rdp"
