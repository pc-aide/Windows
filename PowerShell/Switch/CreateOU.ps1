<#
-------------------------------------------------------
    E.g.
     ListOU.csv   
         Name;path
         DEV;dc=GOLOVA,dc=RUS
         PST;dc=GOLOVA,dc=RUS
         WORKSTATION;ou=PST,dc=GOLOVA,dc=RUS
    
   Usage: .\CreateOU.ps1 -FileCSV .\ListOU.csv     
   O/P: 
-------------------------------------------------------
#>

#Switch
param([parameter(Mandatory=$true)] [String]$FileCSV)
#List
$ListOU = Import-Csv $FileCSV -Delimiter ";"

foreach($OU in $ListOU){
    Try{
        #Name
        $OUName = $OU.Name
        #Path
        $OUPath = $OU.Path
        #Display the Name & path of the new OU
        Write-Host -ForegroundColor Yellow $OUName $OUPath
        #Create OU
        New-ADOrganizationalUnit -Name "$OUName" -Path "$OUPath"
        #Display confirmation
        Write-Host -ForegroundColor Green "OU $OUName created"
    }
    catch{
        #Error
        Write-Host $Error[0].Exception.Message -ForegroundColor Red
    }
}
