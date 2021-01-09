 
::&----------------------------------------------------------
::&
::& Args:
::&  /add
::&  /delete
::&  /compare
::&   Return Code (Except for reg compare)
::&   0 - Successful
::&   1 - failed
::&
::& Remote PC:
::&   \\<Host>\
::&----------------------------------------------------------

REM https://imgur.com/mipdYrU
reg query \\m99998\hklm\system\currentControlSet\Control\SecureBoot\State
