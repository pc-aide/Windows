<#
----------------------------------------------------------------------
    Alternative get-computerInfo <- more long as cmdlet
----------------------------------------------------------------------
#>
 
#Variables
$Intel_vt = (systemInfo | Select-String 'virtualisation activ').ToString().Split(':')[1].Trim()
 
#Intel VT-x technology
if ($Intel_vt -eq "Non"){
    Write-Host "Vous devez activer votre Intel_VT Virtualisation dans votre BIOS" -BackgroundColor Red
    $Error[0].Exception
    Start-Sleep -Seconds 20
    [Environment]::Exit(1)
}
