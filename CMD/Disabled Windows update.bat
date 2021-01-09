::&----------------------------------------------------------------------------------------------------------------------
::  Docs: sc.exe -> https://ss64.com/nt/sc.html
::
::  mp4 -> https://www.youtube.com/watch?v=dKFBZ_0a1B4
::&----------------------------------------------------------------------------------------------------------------------
 
:: Show config - dependencies, full path etc
sc qc wuauServ
 
:: Stop service & disabled
net stop wuauServ & sc config wuauServ start= disabled
 
::Start Windows Update again
sc config wuauServ start= auto & net start wuauServ
