# Start-Process

## ExitCode
* 0 - success
* 1619 - Command line of the policy is incorrectly referenced. - Don't start with .\*.msi

## E.g
````PowerShell
(start-process msiExec -argumentlist "/i laps.x64.msi /q" -wait -passThru).ExitCode
````
[<img src="https://i.imgur.com/Ysus70Q.png">](https://i.imgur.com/Ysus70Q.png)

