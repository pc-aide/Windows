::&----------------------------------------------------------
::& Doc: https://ss64.com/nt/certutil.html
::& Args: - Warning many verbs !
::&   -f --Force Overwrite
::&   -p --Password
::&
::&   noExport --Makes the private key non-exportable
::&
::&   When importing a PFX-file with the certificate import wizard, you can
::&   choose if the private key should be exportable or not. Your choice is
::&   stored in the key storage property identifier that is key-storage specific.
::&   In other words, there is no information in the certificate about the exportability
::&   of the related private key. It is possible that if you import the same PFX-file
::&   into different computers that the private key is maked as exportable on one computer
::&   and is not marked as exportable on another. 
::&----------------------------------------------------------

REM https://imgur.com/zupSGVO
certUtil -f -p password1234 -importPfx PC_Aide.pfx noExport
