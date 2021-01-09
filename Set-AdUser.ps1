<#
-----------------------------------------------------------------------------
  
-----------------------------------------------------------------------------
#>

#IP Phone | https://imgur.com/vmH1TuX
# we used this one time if the value empty | https://imgur.com/JxpghW4
Set-AdUser -Identity Steve -Add @{IPPhone=2019}

#Replace (Updated) IPPhone | https://imgur.com/x39LXfZ
#Need a Delay min 15 sec before to get the update of the AD !?
Set-ADUser -Identity Steve -Replace @{IPPhone=1984}
