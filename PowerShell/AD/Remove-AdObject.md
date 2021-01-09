# Remove-AdObject

## Remove computer from AD
````PowerShell
get-adComputer -identity e19303 | remove-adObject -recursive -confirm:$false
````
