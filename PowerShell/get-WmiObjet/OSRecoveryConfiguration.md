# OSRecoveryConfiguration

## get-member
* Property
 * AutoReboot (bool)
 * DebugFilePath
 * DebugInfoType
 * ExpandedDebugFilePath
 * ExpandedMiniDumpDirectory
 * KernelDumpOnly
 * OverwriteExistingDebugFile
 * SendAdminAlert (bool)
 * WriteDebugInfo (bool)
 * WriteToSystemLog (bool)
 
 ## E.g.
 ````PowerShell
 get-wmiObject win32_OSRecoveryConfiguration |
 select AutoReboot,DebugFilePath,DebugInfoType,ExpandedMiniDumpDirectory,SendAdminAlert
 ````
 [<img src="https://i.imgur.com/qJvgf36.png">](https://i.imgur.com/qJvgf36.png)
