<#
-------------------------------------------------------------------------------------------------------------------------
    O/P: https://imgur.com/xvusZ7F
 
    Default path: https://imgur.com/f9qf19H
    1) hklm -> hkey_local_machine
    2) hkcu -> hkey_current_user
   
    Other path (registry hive):
    3) -> hkey_classes_root
    4) -> hkey_users
    5) -> hkey_current_config
-------------------------------------------------------------------------------------------------------------------------
#>
 
#By default
get-item "hklm:\<path>"
 
#Add HKCR (https://imgur.com/sq7RSMM)
New-PSDrive -PSProvider registry -Root HKEY_CLASSES_ROOT -Name HKCR
 
#We can too check registry hive without psDrive (https://imgur.com/maZY5QX)
get-childItem "registry::hkey_users\"

#https://imgur.com/qheIGPd
$UEFISecureBoot = get-item -path Registry::hkey_local_machine\system\ControlSet001\Control\SecureBoot\State
$UEFISecureBoot.GetValue("UEFISecureBootEnabled")
