# Intro

## Acronym
AD : Active Directory

## cmdlet PS
````PowerShell
#
add-computer -domainName vino -ouPaht "ou=workstation,dc=vino,dc=mosva,dc=rus" -credendial admin@vino
````
````PowerShell
# Delete Computer from the AD
Remove-ADObject -Identity E99998 -confirm:$false
````
