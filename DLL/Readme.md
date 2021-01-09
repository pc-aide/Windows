# DLL

## Acronym
* DLL - Dynamic Link Library

## URL
* https://www.dll-files.com/amtlib.dll.html

## Register *.dll
0) Need Elevated: yes
1) Put the file *.dll into the proper directory 
 * E.g InstallDir, 
  * %windir%\System32\ for 64 bits
  * %windir%\Syswow64\ for 32 bits
2) regSvr32 *.dll
