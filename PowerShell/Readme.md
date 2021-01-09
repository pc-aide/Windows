# Intro cmdlet PS

## Alias
* PS : PowerShell
* % : Foreach

## cmdlet
* pronounce : command-lets

## Logic
* E.g: get-content 
  * get : the name is a verb
  * - : hypen
  * Content :  a noun (whci shoud be singular)
  
## Verb
* Verb (Group)
  * Common (Group)
    * Add                                          
    * Clear                                        
    * Close                                        
    * Copy                                         
    * Enter                                        
    * Exit                                         
    * Find                                         
    * Format                                       
    * Get                                          
    * Hide                                         
    * Join                                         
    * Lock                                         
    * Move                                         
    * New                                          
    * Open                                         
    * Optimize                                     
    * Pop                                          
    * Push                                         
    * Redo                                         
    * Remove                                       
    * Rename                                       
    * Reset                                        
    * Resize                                       
    * Search                                       
    * Select                                       
    * Set                                          
    * Show                                         
    * Skip                                         
    * Split                                        
    * Step                                         
    * Switch                                       
    * Undo                                         
    * Unlock                                       
    * Watch                                        
  * Backup                                       Data
  * Checkpoint                                   Data
  * Compare                                      Data
  * Compress                                     Data
  * Convert                                      Data
  * ConvertFrom                                  Data
  * ConvertTo                                    Data
  * Dismount                                     Data
  * Edit                                         Data
  * Expand                                       Data
  * Export                                       Data
  * Group                                        Data
  * Import                                       Data
  * Initialize                                   Data
  * Limit                                        Data
  * Merge                                        Data
  * Mount                                        Data
  * Out                                          Data
  * Publish                                      Data
  * Restore                                      Data
  * Save                                         Data
  * Sync                                         Data
  * Unpublish                                    Data
  * Update                                       Data
  * Approve                                      Lifecycle
  * Assert                                       Lifecycle
  * Complete                                     Lifecycle
  * Confirm                                      Lifecycle
  * Deny                                         Lifecycle
  * Disable                                      Lifecycle
  * Enable                                       Lifecycle
  * Install                                      Lifecycle
  * Invoke                                       Lifecycle
  * Register                                     Lifecycle
  * Request                                      Lifecycle
  * Restart                                      Lifecycle
  * Resume                                       Lifecycle
  * Start                                        Lifecycle
  * Stop                                         Lifecycle
  * Submit                                       Lifecycle
  * Suspend                                      Lifecycle
  * Uninstall                                    Lifecycle
  * Unregister                                   Lifecycle
  * Wait                                         Lifecycle
  * Debug                                        Diagnostic
  * Measure                                      Diagnostic
  * Ping                                         Diagnostic
  * Repair                                       Diagnostic
  * Resolve                                      Diagnostic
  * Test                                         Diagnostic
  * Trace                                        Diagnostic
  * Connect                                      Communications
  * Disconnect                                   Communications
  * Read                                         Communications
  * Receive                                      Communications
  * Send                                         Communications
  * Write                                        Communications
  * Block                                        Security
  * Grant                                        Security
  * Protect                                      Security
  * Revoke                                       Security
  * Unblock                                      Security
  * Unprotect                                    Security
  * Use                                          Other

### Top 20 verbs used
1) Get
  * E.g: get-childItem  
  [<img src="https://i.imgur.com/dEpW4bC.png">](https://i.imgur.com/dEpW4bC.png)
2) Set
  * E.g: set-dnsClientServerAddress
3) Export
  ````Powershell
  # Need Elevated : yes for this cmdlet
  # pnpUtil /export-driver * c:\temp\PnpUtil_no_Elevated
  Export-WindowsDriver -Online -Destination "c:\temp\Driver(INF)"
  ````
  [<img src="https://i.imgur.com/NHcYbZs.png">](https://i.imgur.com/NHcYbZs.png)
  [<img src="https://i.imgur.com/63axZHP.png">](https://i.imgur.com/63axZHP.png)
  
4) Out
  ````Powershell
  # out-null - no output in the console
  get-childItem | out-Null
  ````
  [<img src="https://i.imgur.com/KUKY7EW.png">](https://i.imgur.com/KUKY7EW.png)
  
5) Import
  ````Powershell
  import-csv c:\temp\computers.csv |
  %{
   $Model = (get-WmiObject win32_ComputerSystem).Model
  }
  $Model
  ````
  [<img src="https://i.imgur.com/8rE9hdr.png">](https://i.imgur.com/8rE9hdr.png)

6) Test
  ````Powershell
  test-path c:\temp\Directory_NoExist
  ````
  [<img src="https://i.imgur.com/u8Mi54v.png">](https://i.imgur.com/u8Mi54v.png)

7) ConvertTo-Csv
  ````Powershell
  get-wmiObject win32_pnpSignedDriver |
  select Manufacturer,Devicename,DriverVersion |
  select -first 5 |
  ConvertTo-Csv
  ````
  [<img src="https://i.imgur.com/dDI7Gjo.png">](https://i.imgur.com/dDI7Gjo.png)

