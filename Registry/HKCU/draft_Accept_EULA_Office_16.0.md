# Accept_EULA_Office_16.0

## e.g
### 01 - test on office 2016
````powershell
;----------------------------------------------------------------------------------------------------
;Security Identifier (SID) with account association
;SID user (Domain) -> powershell -> get-adUser -identity $env:username | select sid
 
;Version_16.0.11001.20108
;PackageGUID -> intoPath the app.lnk
;----------------------------------------------------------------------------------------------------
 
;#####################################################################################################
; This version is old or poor because SID user variable 'Accepted_EULA._office_2016 (version old).reg'
; This version is best 'pending.reg'
;#####################################################################################################
 
[HKEY_CURRENT_USER\Software\Microsoft\AppV\Client\Packages\<PackageGUID>\REGISTRY\USER\<SID user>\Software\Microsoft\Office\16.0\Common\General]
 
@=hex(40000):
"shownFirstRunOptin"=dword:00000001
 
[HKEY_CURRENT_USER\Software\Microsoft\AppV\Client\Packages\<PackageGUID>\REGISTRY\USER\<SID user>\Software\Microsoft\Office\16.0\Common\Licensing]
 
@=hex(40000):
"eulasSetAccepted"="8.0,"
````
[<img src="https://pix.toile-libre.org/upload/original/1542768363.png">](https://pix.toile-libre.org/upload/original/1542768363.png)
