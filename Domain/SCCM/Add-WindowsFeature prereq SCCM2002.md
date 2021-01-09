# Prereq SCCM 2002 (Add-WindowsFeature)

## Script
````PowerShell
#Time : ~1min 40sec

#Web Server
Add-WindowsFeature web-server,web-webServer, web-common-http, `
    web-default-doc, web-dir-browsing, web-http-errors, web-static-content, `
    web-health, web-http-logging, web-performance, web-stat-compression, `
    web-dyn-compression, web-security, web-filtering, web-windows-auth, `
    web-app-dev, web-net-ext45, web-asp-net45, web-isapi-ext, web-isapi-filter, `
    web-mgmt-tools, web-mgmt-console, web-mgmt-compat, web-wmi, web-metabase
 
#WSUS (Content_dir: \progra~1\Update Services)
Add-WindowsFeature updateServices -IncludeManagementTools
 
#Other things
Add-WindowsFeature net-framework-45-aspnet,NET-Framework-Features, net-wcf-http-activation45, `
    windows-internal-database
 
#other thing WEB
Add-WindowsFeature web-http-redirect, web-log-libraries, web-request-monitor, `
    web-http-tracing
 
#BITS
Add-WindowsFeature bits, bits-iis-ext
 
#Remote diff. compression + RSAT
Add-WindowsFeature rdc, rsat-feature-tools, rsat-bits-server
````
## Tested
SCCM 2002 : ok - 27-07-2020
