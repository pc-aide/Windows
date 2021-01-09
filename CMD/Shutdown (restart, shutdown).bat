::&----------------------------------------------------------------------------------------------------
::& Docs.MS: https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/shutdown
::& Log: get-eventLog system | where-object {$_.eventID -eq "1074"} | fl
::& Arg:
::&     /r: restart
::&     /f: force
::&     /t: time in sec
::&     /c "<comments>"
::&     /s: shutdown
::&----------------------------------------------------------------------------------------------------
 
::Restart <-https://imgur.com/h2FdUqK
shutdown /r /f /t 0 /c "test101"
