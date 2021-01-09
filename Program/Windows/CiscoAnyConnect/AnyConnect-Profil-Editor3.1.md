# Any Connect Profil Editor 3.1

## Prerequisites
* Java Runtime Environment 1.6 or higher

## Help
c:\progra~2\Cisco\Cisco AnyConnect Profile Editor\![help\ProfileEditorHelp\index.html](https://imgur.com/d6UgHzA)

## Setup

## [*.lnk](https://imgur.com/wUbLwA3)
### %ProgramData%\Microsoft\Windows\Start Menu\Programs\Cisco\Cisco AnyConnect Profile Editor\
* Customer Experience Feedback Profile Editor
* Network Access Manager Profile Editor
* Telemetry Profile Editor
* VPN Local Policy Editor
* VPN Profile Editor
* Web Security Profile Editor

## [AnyConnect Profile Editor - VPN](https://imgur.com/8CmQnjI)
### [Language: XML](https://github.com/pc-aide/XML/blob/master/Profil_AnyConnect_AzureMFA.xml)

### Preferences (Part 1)
* Certificate Store : List Items {All, Machine, User}
* CheckBox Certificate Store Override
* CheckBox Minimize On Connect
* CheckBox Auto Reconnect
    * Auto Reconnect Behavior : List Items {DisconnectOnSuspend, ReconnectAfterResume}
* Windows Logon Enformcement : List Items {SingleLocalLogon, SingleLogon}
* Windows VPN Establishment : List Items {LocalUserOnly, AllowRemoteUsers}
* CheckBox Clear SmartCard PIN
    * IP Protocol Supported : List Items {IPv4, IPv6, IPv4,IPv6, IPv6, IPv4}
    
### Preferences (Part 2)
* ChecBox Allow Local Proxy Connections
* ChecBox Automatic VPN Policy
      * Trusted DNS Servers: \<FieldInput\>
            * Note: adding all DNS servers in use is recommended with Trusted Network Detection
* PPP Exclusion : List Items {Automatic, Disable, Override}

### Certificte Matching
* Key Usage : List ChexBox :
      * Decipher_Only
      * Encipher_Only
      * CRL_Sign
      * Key_Cert_Sign
      * Key_Agreement
      * Data_Encipherment
      * Key_Encipherment
      * Non_Repudiation
      * Digital_Signature
* Extended Key Usage : List ChexBox :
      * ServerAuth
      * clientAuth
      * and so on
* Custom Extended Math Key (Max 10)
* Distinguished Name (Max 10)
   * Name [List Items]
   * Pattern [String]
   * Wildcard [CheckBox]
   * Operator [CheckBox]
   * MatchCase [CheckBox]
* Server List
      * Hostname
      * Host Address
      * Primary Protocol : List Items {SSL, IPSec}
