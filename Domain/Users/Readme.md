# Users

## e.g - 01 script + csv
* Script:
````powershell
#Switch
param([parameter(Mandatory=$true)] [String]$FileCSV)
#List
$ListUsers = Import-Csv $FileCSV -Delimiter ";"

foreach($User in $ListUsers){
    Try{
        #GivenName
        $Firstname = $User.FirstName
        
        #SurName
        $LastName = $User.LastName
        
        #SamAccountName
        $UserName = $User.UserName

        #PWD
        $PWD = $User.PWD

        #Path
        $OU = $User.OU
        
        Write-Host -ForegroundColor Yellow $UserName 
        #Create OU
        New-ADUser -Name "$Firstname $LastName" -GivenName $Firstname `
            -Surname $LastName -SamAccountName $UserName `
            -AccountPassword (ConvertTo-SecureString $PWD -AsPlainText -Force) -Path $OU `
            -Enabled $true -ChangePasswordAtLogon $false
        
        #Display confirmation
        Write-Host -ForegroundColor Green "$UserName created"
    }
    catch{
        #Error
        Write-Host $Error[0].Exception.Message -ForegroundColor Red
    }
}
````
* CSV:
````csv
FirstName;LastName;UserName;PWD;OU
Androv;Levek;levan01;Password123$_;OU=GLOVO,OU=MOSC,OU=VLAD,DC=VINO,DC=RU
````
