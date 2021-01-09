<#
--------------------------------------------------------------------------------------------------------------------
    SRC: https://support.microsoft.com/en-us/help/2782997/how-to-enable-debug-logging-in-microsoft-user-experience-virtualizatio
   
    EventVwr.msc\Applications and services logs\Microsoft\User Experience virtualization\App Agent\Operational
    E.g.: Update Template with error and not error <- https://imgur.com/SKQH7gz
 
    Permission
        S   - synchronize
        WD  - read data/list directory
        0AD  - append data/add subdirectory
 
    UE-V: User Experience Virtualization
--------------------------------------------------------------------------------------------------------------------
#>
                                                     #################
                                                     # ScheduledTask #
                                                     #################
#Sync App <- https://imgur.com/4iop03P
Start-ScheduledTask "\Microsoft\ue-v\sync controller application"
 
#Updte TemplateID
Start-ScheduledTask "Microsoft\ue-v\Template Auto Update"
 
                                                           #####
                                                          # Log #
                                                           #####
#Error update template <- https://imgur.com/zALVOxp
get-winEvent "microsoft-user experience virtualization-app*" -maxEvent 2 | fl
 
#Template <Name.exe> have been successfully uploaded <- https://imgur.com/sdvFIN1
get-winEvent *virtualization*app* -maxEvents 2 | fl
get-WinEvent *virtualization* -maxEvent 2 | fl # O/P: https://imgur.com/vb97tlF
 
                                                      ##################
                                                     # Enable Debug log #
                                                      ##################
#Elevted: y
logman create trace uev -p "microsoft-user experience virtualization-app agent" -ow -o uevTrace.etl
logman start uev #Reproduce the issue here
 
#when it's done
logman stop uev
netsh trace convert uevTrace_000001.etl DUMP=txt
notepad uevTrace_000001.txt
 
                                                      ################
                                                   # get-command *uev* #
                                                      ################
#
get-uevStatus
 
#
get-uevTemplate
 
#
get-uevConfiguration
 
                                                         ############
                                                        # Permission #
                                                         ############
 
#User Data (E.g.: uev.\ NT Authority\Authenticated Users:(S,WD,AD))
icAcls .\UEV\
