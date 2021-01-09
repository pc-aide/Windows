<#
--------------------------------------------------------------------------------------------------------------------
    SRC: https://social.technet.microsoft.com/Forums/windowsserver/en-US/54c4c520-2831-4f7f-9fab-a32653a61cac/find-unknown-devices-with-powershell?forum=winserverpowershell
 
    GUI: https://imgur.com/DJhbVzh
    PowerShell: https://imgur.com/Ym3mRkP
 
    NB: Cisco AnyConnect pending...
--------------------------------------------------------------------------------------------------------------------
#>
 
#Get alert device yellow <- https://imgur.com/QFUXOGK
$ProblemDevices = Get-WmiObject Win32_PNPEntity |
    Where-Object{$_.ConfigManagerErrorCode -ne 0} |
    Select Name, DeviceID, ConfigManagerErrorCode
 
ForEach($ProblemDevice in $ProblemDevices){
    $ErrorDesc = Switch ($ProblemDevice.ConfigManagerErrorCode){
        1 {"Device is not configured correctly."}
        2 {"Windows cannot load the driver for this device."}
        3 {"Driver for this device might be corrupted, or the system may be low on memory or other resources."}
        4 {"Device is not working properly. One of its drivers or the registry might be corrupted."}
        5 {"Driver for the device requires a resource that Windows cannot manage."}
        6 {"Boot configuration for the device conflicts with other devices."}
        7 {"Cannot filter."}
        8 {"Driver loader for the device is missing."}
        9 {"Device is not working properly. The controlling firmware is incorrectly reporting the resources for the device."}
        10 {"Device cannot start."}
        11 {"Device failed."}
        12 {"Device cannot find enough free resources to use."}
        13 {"Windows cannot verify the device's resources."}
        14 {"Device cannot work properly until the computer is restarted."}
        15 {"Device is not working properly due to a possible re-enumeration problem."}
        16 {"Windows cannot identify all of the resources that the device uses."}
        17 {"Device is requesting an unknown resource type."}
        18 {"Device drivers must be reinstalled."}
        19 {"Failure using the VxD loader."}
        20 {"Registry might be corrupted."}
        21 {"System failure. If changing the device driver is ineffective, see the hardware documentation. Windows is removing the device."}
        22 {"Device is disabled."}
        23 {"System failure. If changing the device driver is ineffective, see the hardware documentation."}
        24 {"Device is not present, not working properly, or does not have all of its drivers installed."}
        25 {"Windows is still setting up the device."}
        26 {"Windows is still setting up the device."}
        27 {"Device does not have valid log configuration."}
        28 {"Device drivers are not installed."}
        29 {"Device is disabled. The device firmware did not provide the required resources."}
        30 {"Device is using an IRQ resource that another device is using."}
        31 {"Device is not working properly.  Windows cannot load the required device drivers."}
    }
    Write-Host "$($ProblemDevice.Name) ($($ProblemDevice.DeviceID)): "
    Write-Host "`t$ErrorDesc"
}
