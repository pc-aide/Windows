<#
----------------------------------------------------------------
  cmd : icAcls.exe
  
  Access Right's Name in PS:
    Basic
      FullControl
      Read
      Write
      ReadAndExecute
      Modify
    
    No Basic
      ExecuteFile
      ReadData
      ReadAttributes
      ReadExtendedAttributes
      CreateFiles
      AppedData
      WriteAttributes
      WriteExtendedAttributes
      DeleteSubdirectoriesAndFiles
      Delete
      readPermissions
----------------------------------------------------------------
#>

#Folder (SmbShare)
$acl = Get-Acl \\fs1\shared\sales

#Add new User or Group
$AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("<Domain>\<User | Group>","FullControl","Allow")

#Set to object
$acl.SetAccessRule($AccessRule)

#Set to folder
$acl | Set-Acl \\fs1\shared\sales

#IdentityReference
(get-acl .fic01).access | select Iden*
