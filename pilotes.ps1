<#
-------------------------------------------------------------------------------------------------------------------------
    NB: infName -> *.inf
    oem -> oem[digit].inf (https://imgur.com/pJPugr5)
-------------------------------------------------------------------------------------------------------------------------
#>
 
#Stand out to clipboard (https://imgur.com/xcg4pBz)
get-wmiObject win32_pnpSignedDriver | select deviceName, manufacturer, driverVersion, DriverDate, infName | clip
 
#StdOut to clipboard format csv (https://imgur.com/HUo436S)
get-wmiObject win32_pnpSignedDriver | select deviceName, manufacturer, driverVersion, DriverDate, infName | convertTo-csv | clip
 
#Export-csv (https://imgur.com/5yLtVDU)
get-wmiObject win32_pnpSignedDriver | select deviceName, manufacturer, driverVersion, DriverDate, infName | export-csv c:\users\public\pilotes.csv

#Filter = TPM (https://imgur.com/2lXpce6)
get-wmiObject win32_pnpSignedDriver | select deviceName, manufacturer, driverVersion, DriverDate, infName | convertTo-csv | findstr /i tpm
