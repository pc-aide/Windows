<#
-----------------------------------------

-----------------------------------------
#>

cls
$ErrorActionPreference = "stop"

                            #############
                            # Variables #
                            #############
#Default GPOName
$DefaultDomainPolicy = "Default Domain Policy"
$ListNewGPO = Get-Content "NewGPO.txt"
#Path
$Path = "C:\Temp\Test_all_GPO_and_importSettings"

Import-GPO -BackupGpoName $DefaultDomainPolicy -TargetName $DefaultDomainPolicy -Path "$Path\$DefaultDomainPolicy"

                             ###########
                             # New-GPO #
                             ###########

foreach ($NewGPO in $ListNewGPO){
    try{
        #New GPO Name
        New-GPO -Name $NewGPO
        #Import settings
        Import-GPO -BackupGpoName $NewGPO -TargetName $NewGPO -Path "$Path\$NewGPO"
    }
    catch{
        $Error[0].Exception
    }
}
