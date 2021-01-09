# NTLogEvent

## get-member
* Name
  * Type
  * LogFile
  * Message
  * SourceName
  * TimeGenerated
  * TimeWritten
  * Category
  
## E.g.
````PowerShell
get-cimInstance win32_ntLogEvent -filter "LogFile='Application'" | 
select TimeWritten,Type,Sourcename,Message |
sort TimeWritten -descending | select -first 3
````
