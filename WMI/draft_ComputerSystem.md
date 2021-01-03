::&----------------------------------------------------
::& wmic ComputerSystem get /?
::&
::& AdminPasswordStatus - O/P : Binary (1: on | 0: off)
::& Caption - Hostname
::& ChassisBootupState - O/P: 1@3 (1: | 2: | 3:)
::& DomainRole - O/P: 0@2 (o: | 1: | 2:)
::& Name - Hostname
::& PartOfDomain - [Boolean]
::& PrimaryOwnerName - administrator local
::& TotalPhysicalMemory - size in octel
::& SystemType - Architecture [32 | 64]
::&----------------------------------------------------

REM https://imgur.com/WcgjFvB
wmic ComputerSystem get Caption

REM https://imgur.com/Cs2IFJc
wmic ComputerSystem get Domain

REM https://imgur.com/GnEYGs7
wmic ComputerSystem get Manufacturer

REM https://imgur.com/YKJYznA
wmic ComputerSystem get Model

REM Search specific model
REM https://imgur.com/TNu30hJ
wmic ComputerSystem where "model like '%vmware%'" get model

REM https://imgur.com/Tr3atdZ
wmic ComputerSystem get NumberOfProcessors

REM https://imgur.com/RYdmR8brl
wmic ComputerSystem get PrimaryOwnerName

REM https://imgur.com/NNEeifm
wmic ComputerSystem get TotalPhysicalMemory

REM https://imgur.com/1mXlAuO
wmic ComputerSystem get SystemType

REM https://imgur.com/PwpwbBR
wmic ComputerSystem where caption='%computerName%' rename TMG01
