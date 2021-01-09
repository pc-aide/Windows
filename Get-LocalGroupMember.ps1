<#
--------------------------------------------------------------------------
  Alternative: cmd -> net localGroup <GroupName>
--------------------------------------------------------------------------
#>

$Path_Logs = "%tmp%\"
$Group_Name = "AUTORITE NT\Utilisateurs authentifiés"

#Permission vmconnect (need logoff to take effect)
Try{
    if (!(Get-LocalGroupmember -Group "Administrateurs Hyper-V").name -eq $Group_Name)
    {
      Add-LocalGroupMember -Group "Administrateurs Hyper-V" -Member $Group_Name
    }
}
Catch{
    Write-Host "Erreur: Permissions: il manque $Group_Name dans Hyper-V" -ForegroundColor Red
    $Error[0].Exception | Out-File "$Path_Logs\Error_net_localgroup.txt"
    Start-Sleep -Seconds 20
    [Environment]::Exit(1)
}
