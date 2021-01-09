<#
---------------------------------------------
    SRC : https://www.reddit.com/r/PowerShell/comments/30t5xh/how_to_catch_error_when_msi_install_fails/
    O/P : https://imgur.com/VIRl71K   
    
    THEPROPERTYNAME:
        msiexec /i yourmsi.msi THEPROPERTYNAME=ValueOfProperty
---------------------------------------------
#>

#Variables
$ErrorActionPreference = "stop"
cls

#Switch
$ArgumentList = "/i SurfaceUEFI_Manager_v2.70.139.0_x64.msi /q /l* $Env:Temp\INS_SEMMSurfacePro7V1.txt"
#Return Code (o = Non Reboot)
$Return = Start-Process msiExec.exe -ArgumentList $ArgumentList -Wait -PassThru
if (@(0,3010) -contains $Return.ExitCode){
    Write-Host "Install successful" -ForegroundColor Green
    Write-Host "ExitCode:" $Return.ExitCode
    }
else{
    Write-host "Install Non Succesful"  -ForegroundColor Red
    Write-Host "Presence du program [Boolean]: "
    Test-Path ".\SurfaceUEFI_Manager_v2.70.139.0_x64.msi"
}

#
Start-Process msiExec.exe -ArgumentList "/i MS_TMG_client.msi /q SERVER_NAME_OR_IP=tmg01 ENABLE_AUTO_DETECT=0 /l* $Env:Temp\Install_TMGClient.log"
