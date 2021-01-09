<#
-------------------------------------------------------------------------
  Root: \
  Verbs: Get | Start | 
  
  Args: 
    TaskName
    
   Allow the task to start on demand : https://imgur.com/CuKINKq
-------------------------------------------------------------------------
#>

# https://imgur.com/vuvrAkj
get-ScheduledTask \

# https://imgur.com/37aWFT2
get-scheduledTask -taskName "restart*friday*" | start-scheduledTask
