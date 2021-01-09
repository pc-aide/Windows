::&----------------------------------------------------------------------------------------------------
::&
::& Available PowerShell: {Export,Add,get}-WindowDriver
::& GUI: HdwWiz.cpl
::&
::& Syntax: pnpUtil [-f | -i] [-a | -d | -e] <INF name>
::& Arg:
::&     -i ->  install
::&     -a -> add
::&    
::&----------------------------------------------------------------------------------------------------
 
::Enumrate all 3rd party packages <- https://imgur.com/Xe2Ve21
pnpUtil -e
 
::Export (available only Windows 10, not Windows 8.1) <-
pnpUtil /export-driver [oem3.inf | *] <destinationPath>
 
::Install Driver (*.inf) <-
PnpUtil -i -a <PathFolder>/*
