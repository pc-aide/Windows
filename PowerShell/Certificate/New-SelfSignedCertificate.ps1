<#
--------------------------------------------------------------------
  Need Elevated : Yes
  
  SRC : https://medium.com/the-new-control-plane/generating-self-signed-certificates-on-windows-7812a600c2d8
  SAN : Subject Alternative Name
  
  Args:
  -DnsName -- specifies 1 or more DNS names to put into the subject alternative name extension of the certificate.
              The first DNS name is also saved as the Subject Name.
  
  Alternative : OpenSSL
  Import *.pfx(CMD): CertUtil.exe
--------------------------------------------------------------------
#>

                          ##############
                        # Valide 1 year #
                          ##############

#Create (https://imgur.com/QfiRsAf)
$Cert = New-SelfSignedCertificate -certstorelocation cert:\LocalMachine\my -dnsname PC_Aide.com

#PlanText
$PWD = ConvertTo-SecureString -String 'password1234' -Force -AsPlainText

#NoPlainText (https://imgur.com/5MH6bMO)
$PWD_NoPlanText = Read-Host "Enter password" -AsSecureString

#Path (https://imgur.com/TAiw5m0)
$Path = 'Cert:\LocalMachine\my\' + $Cert.Thumbprint

#Export *.pfx (https://imgur.com/6NtR9IJ)
Export-PfxCertificate -Cert $Path -FilePath "$env:TMP\PC_Aide.pfx" -Password $PWD

                          ##############
                        # Valide 3 years #
                          ##############

#https://imgur.com/gvYk3a3
$Date_Now = Get-Date
$Extended_Date = $Date_Now.AddYears(3)

#Create (https://imgur.com/a7svdSk)
$Cert = New-SelfSignedCertificate -cerstorelocation cert:\localmachine\my -dnsname PC_Aide.com -NotAfter $Extended_Date

                          ##############
                        # Multiple SAN #
                          ##############

$Cert = New-SelfSignedCertificate -certstorelocation cert:\localmachine\my -dnsname PC_Aide.com, PC_IT.com -notafter $Extended_Date -KeyLength 4096

                          ##############
                        # Import *.pfx #
                          ##############

#Used variable for the PWD (https://imgur.com/pQlrV8V)
Import-PfxCertificate -FilePath "$env:temp\certificate\PC_Aide.pfx" -CertificateLocation Cert:\LocalMachine\My\ -Password $PWD
