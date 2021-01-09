# get-process

## Parameter
* PassThru : lets you request output from cmdlets that return no output by default. It's used most often to very that the cmdlet did what you intended.

## get-member
* Properties
  * Path
  * Name
  * CommandLine
  * Handle
  
## E.g. :
* Detecting Elevated process (bol)
````PowerShell
#SRC: https://www.powershellmagazine.com/2013/03/29/pstip-detecting-if-a-certain-process-is-elevated/
cls
Get-Process |
Add-Member -Name Elevated -MemberType ScriptProperty -Value {
    #true 
    if ($this.Name -in @('Idle','System')) {
        $null
    }
    #False
    else{
        -not $this.Path -and -not $this.Handle
    }
} -PassThru |
ft Name,Elevated,path,handle
````
[<img src="https://i.imgur.com/xFodSBf.png">](https://i.imgur.com/xFodSBf.png)
