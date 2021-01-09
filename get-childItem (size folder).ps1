<#
-------------------------------------------------------------------------------------------------------------------------
 
-------------------------------------------------------------------------------------------------------------------------
#>
 
#Long command <- https://imgur.com/2JWDcwY
get-childItem e:\sccm-preReq\ -recurse | measure-object -sum length
 
#Convert MB | gb <- https://imgur.com/vLtE9sc
(ls e:\sccm-preReq\ -r | measure -s length).sum/1mb
 
#Format <- https://imgur.com/29bOeId
$folder_Office = "{0:N2} MB" -f ((Get-ChildItem .\Office -Recurse | measure Length -s).Sum /1Mb)
