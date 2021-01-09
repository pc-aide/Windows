<#
-----------------------------------------------------------------------
  Syntax:
    Get-FileHash [-paht] <String[]> [-Algorith {SHA1 | ...}
  
  Algorithm:
    SHA1
    SHA256
    SHA384
    SHA512
    MD5
-----------------------------------------------------------------------
#>

#https://imgur.com/vfLpGME
get-fileHash .\Readme.txt -Algorithm MD5 | select Algorthme,Hash
