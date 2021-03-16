# Process

## Stop-process
````powershell
$ProcessList = 'chrome|firefox|iexplore|opera'
get-process |
    ? {$_.ProcessName -match $softwarelist} |
    stop-process -force
````
