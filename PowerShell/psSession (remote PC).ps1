<#
-------------------------------------------------------------------------------------------------------------------------
    Elevated: Y
 
    PowerShell ver. 3
  
    O/P: https://imgur.com/aS3liUz
-------------------------------------------------------------------------------------------------------------------------
#>
 
# From client or Server | need just once time
Enable-psRemoting -force
 
# Access remote target | Syntax enter-psSessin -computerName (optional) <hostname>
enter-psSession win1809
 
#(Elevated: N) CMD on remote PC if there a domain <- https://imgur.com/LmW924M
winrs -r:ad-golova cmd
