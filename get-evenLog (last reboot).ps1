<#
----------------------------------------------------------------

----------------------------------------------------------------
#>

# https://i.imgur.com/GQVGbiH.png
Get-EventLog System | Where-Object { `
  $_.EventID -eq "1074" -or $_.EventID -eq "6008" `
  -or $_.EventID -eq "1076"} `
  | ft Machinename, TimeWritten, UserName, EventID, Message -AutoSize -Wrap | more
