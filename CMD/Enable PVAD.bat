::&--------------------------------------------------------------------------------------------------------------
:: About App-V 5.0 SP3 : https://docs.microsoft.com/en-us/microsoft-desktop-optimization-pack/appv-v5/about-app-v-50-sp3#BKMK_pvad_hidden
::
:: PVAD: Primary Virtual Application Directory
:: Describe: PVAD = Local Directory = The default location of installation of the program
:: Exception:
:: 1) programs portable -> e.g -> chromePortable, eclipse, and so on. With programs portable so PVAD don't matter in theory
:: 2) 2 programs into 1 setup.exe without the choose of LocalDir -> E.g. ->
::
:: Program (Definition): when we have product code (msiExec) = softwareCode (AppVManifestEditor
::
:: E.g -> Autocad DWG TrueView 2018
:: LocalDir: c:\program files\autodesk
:: mp4 -> https://www.youtube.com/watch?v=85bHhGQOLtg
::&--------------------------------------------------------------------------------------------------------------
 
::Permanent
reg add HKLM\SOFTWARE\Microsoft\AppV\Sequencer\Compatibility /v EnablePVADControl /t REG_DWORD /d 1
 
::Temporally
sequencer -enablePVADControl
