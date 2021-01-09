<#
-----------------------------------------
    Version: 0.1

-----------------------------------------
#>

cls
$ErrorActionPreference = "stop"

                            #############
                            # Variables #
                            #############
#Default GPOName
$DefaultDomainPolicy = "Default Domain Policy"
#OU=Workstations
$ListNewGPO_OU_Workstations = Get-Content ".\OU=Workstations.txt"
#OU=Users
$ListNewGPO_OU_Users = Get-Content ".\OU=Users.txt"
                            
                            ########
                            # Path #
                            ########

#Default Domain Policy
#Syntax for Path : parent of GUID
$Path_DefaultDomainPolicy = "C:\Temp\test\ImportSettings\Default Domain Policy"
#OU=Workstations
$Path_OU_Workstations = "C:\Temp\test\ImportSettings\Worstations"
#OU=Users
$Path_OU_Users = "C:\Temp\test\ImportSettings\Users"


Import-GPO -BackupGpoName $DefaultDomainPolicy -TargetName $DefaultDomainPolicy -Path $Path_DefaultDomainPolicy

                             ###########
                             # New-GPO #
                             ###########

#OU=Workstations
foreach ($NewGPO_OU_Workstations in $ListNewGPO_OU_Workstations){
    try{
        #New GPO Name + Link GPO to target OU
        New-GPO -Name $NewGPO_OU_Workstations | New-GPLink -Target "OU=Workstation,DC=VINO,DC=RUS" -LinkEnabled yes
        #Import settings
        Import-GPO -BackupGpoName $NewGPO_OU_Workstations -TargetName $NewGPO_OU_Workstations -Path "$Path_OU_Workstations\$NewGPO_OU_Workstations"
        

    }
    catch{
        $Error[0].Exception
    }
}

#OU=Users
foreach ($NewGPO_OU_Users in $ListNewGPO_OU_Users){
    try{
        #New GPO Name + Link GPO to target OU
        New-GPO -Name $NewGPO_OU_Users | New-GPLink -Target "OU=Users,DC=VINO,DC=RUS" -LinkEnabled yes
        #Import settings
        Import-GPO -BackupGpoName $NewGPO_OU_Users -TargetName $NewGPO_OU_Users -Path "$Path_OU_Users\$NewGPO_OU_Users"
        

    }
    catch{
        $Error[0].Exception
    }
}
