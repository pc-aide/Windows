<#
-----------------------------------------------------------
  Args:
    /i --Install
    /q --Quiet (no interaction human) 
    /noRestart --No reboot after installation
    /l* <path> --log basic
    
    Comme MsiExec.exe command interne, il preferable d'utiliser via start-process *.exe ...
-----------------------------------------------------------
#>

#Install (https://imgur.com/CBpM3bs)
start-process msiExec.exe -argumentList '‘/i Test_TPM_Disabled_and_SecureBoot_Disabled.msi /q’ 
