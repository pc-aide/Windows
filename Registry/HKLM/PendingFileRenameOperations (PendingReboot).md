# PendingFileRenameOperations (PendingReboot)

## E.g
### 01 - creating sample (bizagi studio)
````powershell
Get-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\' -Name Pend*
[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager]
"PendingFileRenameOperations"=hex(7):5c,00,3f,00,3f,00,5c,00,43,00,3a,00,5c,00,\
  55,00,73,00,65,00,72,00,73,00,5c,00,61,00,64,00,6d,00,4c,00,5c,00,41,00,70,\
  00,70,00,44,00,61,00,74,00,61,00,5c,00,4c,00,6f,00,63,00,61,00,6c,00,5c,00,\
  54,00,65,00,6d,00,70,00,5c,00,7b,00,45,00,33,00,44,00,31,00,38,00,34,00,34,\
  00,43,00,2d,00,34,00,38,00,35,00,42,00,2d,00,34,00,41,00,36,00,34,00,2d,00,\
  38,00,35,00,39,00,31,00,2d,00,43,00,39,00,34,00,43,00,33,00,46,00,33,00,31,\
  00,33,00,45,00,41,00,41,00,7d,00,5c,00,42,00,69,00,7a,00,61,00,67,00,69,00,\
  53,00,74,00,75,00,64,00,69,00,6f,00,2d,00,78,00,36,00,34,00,2e,00,65,00,78,\
  00,65,00,00,00
````
[<img src="https://i.imgur.com/AEDKhV4.png">](https://i.imgur.com/AEDKhV4.png)
