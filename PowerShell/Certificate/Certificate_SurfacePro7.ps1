<#
-------------------------------------------------------------
  SRC: https://docs.microsoft.com/en-us/surface/surface-enterprise-management-mode?redirectedfrom=MSDN
  O/P : https://imgur.com/gMECPfS
-------------------------------------------------------------
#>

#If exist
if (-not (Test-Path "Surface Pro 7 Certificate"))  { New-Item -ItemType Directory -Force -Path "Surface Pro 7 Certificate" }
if (Test-Path "Surface Pro 7 Certificate\PC_Aide.pfx") { Remove-Item "Surface Pro 7 Certificate\PC_Aide.pfx" }

#Password
$PWD = ConvertTo-SecureString "password1234" -AsPlainText -Force

#Create file certLM.msc
$TestUefiV2 = New-SelfSignedCertificate `
-Subject "CN=Surface Pro 7, O=PC Aide, C=CA" `
-Type SSLServerAuthentication `
-HashAlgorithm sha256 `
-KeyAlgorithm RSA `
-KeyLength 2048 `
-KeyUsage KeyEncipherment `
-KeyUsageProperty All `
-Provider "Microsoft Enhanced RSA and AES Cryptographic Provider" `
-NotAfter (Get-Date).AddYears(25) `
-TextExtension @("2.5.29.37={text}1.2.840.113549.1.1.1") `
-KeyExportPolicy Exportable

#Export *.pfx
$TestUefiV2 | Export-PfxCertificate -Password $PWD -FilePath "$Env:TEMP\PC_Aide.pfx"
