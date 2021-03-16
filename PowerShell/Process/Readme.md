# Process

## Stop-process
````powershell
$ProcessList =  @("chrome","firefox","iexplore","opera")

foreach ($process in $ProcessList)
{
    Stop-Process -Name $process -EA 0 -force
}
````
