::&---------------------------------------------------------------------------------
::& Syntax: 
::&   net share shareName
::&---------------------------------------------------------------------------------

REM List from hoster orig.
REM https://imgur.com/WpNBmx0
net share 

REM list from client
REM https://imgur.com/HY9XcoH
net use

REM Permissions for <ShareName>
REM
net share installer


@Echo off
ECHO Creating your sharing folder and network discovery
NET SHARE Upload=D:\Upload /GRANT:everyone,FULL
ECHO Your Upload folder is now available for sharing folder
ECHO.
NET SHARE Downloads=D:\Downloads /GRANT:everyone,READ
ECHO Your Download folder is now available for sharing folder
exit
