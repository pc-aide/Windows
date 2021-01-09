::&----------------------------------------------------------------------------------------------------
::& Manual https://ss64.com/nt/icacls.html
::& Available PowerShell: Y -> set-acl
::& Syntax:  ICACLS <param@1> <param@2> :<param@3><param@4>
::&     @1 -> [/grant | /deny | /remove]
::&
::& Simple right:
::& -------------
::& F   - full access
::& Rx  - read & execute access
::& R   - read-only access
::& W   - write-only access
::&
::& inheritance rights can precede either form and are applied only to directories:
::& (OI) - object inherit
::& (CI) - container inherit
::& (IO) - inherit only
::& (NP) - don't propagate inherit
::& (I) - permission inherited from parent container
::&
::& a comma-separated list in parentheses of specifics rights:
::& ---------------------------------------------------------
::& S   -  synchronize
::& RD  - read data/list directory
::& AD  - append data/add subdirectory
::&----------------------------------------------------------------------------------------------------
 
::Currently folder <- https://imgur.com/fzPugqv
icAcls "SCCM CLient"
 
::Read for everyone for UNC <-https://imgur.com/N54AWbP
icACLs \\sccm1702\sccm_client /grant "everyone":(OI)(CI)M
 
::Remove access everyone <-https://imgur.com/KooFf88
icAcls \\sccm1702\sccm_client /remove "everyone"
 
::Add read + execute
icAcls \\sccm1702\sccm_client /grant "everyone":(OI)(CI)RX

::Add group for folder <- https://imgur.com/VRhTBcU | after ~1h30 min ACL if there the inheritance will come back
::warning if the object inherit (here client folder), after few time, we lost permission
icacls client /grant golova\admin:(f)

:: <- remove inheritance (remove ~1h30 min temp permission) <-
icAcls client /inheritance /grant golova\admin:(f)
