'----------------------------------------------------------------------------------------------------------
'Global Options:
'   /ipk <Product Key> - Install product key (replaces existing key)   
'   /ato [Activation ID] - Activate Windows
'   /dli [Activation ID | All] - Display license information (default: current license)
'   /dlv [Activation ID | All] - Display detailed license information (default: current license)
'   /xpr [Activation ID] - Expiration date for current license state   
'----------------------------------------------------------------------------------------------------------
 
'Status Product activated ... <- https://imgur.com/ymU4Kbb
slmgr /ato
 
'License info <- https://imgur.com/yd30xiK
slmgr /dlv
 
'Is Activated <- https://imgur.com/TbnEIiD
slmgr /xpr
