<#
-------------------------------------------------------------------------------------------
    Syntax:
        try { NonsenseString }
        Catch { "An error occurred." }
-------------------------------------------------------------------------------------------
#>
#Error
$ErrorActionPreference = "Stop"
 
#Variables
#List file *.txt
$GPONames = Get-Content ".\List_Test.txt"
 
foreach ($GPOName in $GPONames){
    Try{
        New-GPO -Name $GPOName
    }
    #Errors for O/P:
    Catch{
        #Variables
        $Index = 0
       
        #First line from file *.txt
        "Error: " `
        + $Error[$Index].TargetObject.Name + " - Ln: "`
        + " - GPO already exists in the NOLB.COM domain" `
        | Out-File ".\Errors.txt" -Append
        $Index ++
        }
}
