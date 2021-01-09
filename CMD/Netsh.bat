::&----------------------------------------------------------------------------------------------------
::& Manual CMD: https://ss64.com/nt/netsh.html
::& GUI: ncpa.cpl
::&
::& Desc.:
::& Syntax FRE: https://imgur.com/sAwNsNw
::&----------------------------------------------------------------------------------------------------
 
::Show config (~ ipconfig) <-- https://imgur.com/UrntunN
netsh interface ip show config
 
::Show ip for known interface <- https://imgur.com/tGoRfqi
netsh interface ip show config ethernet0
 
::Is branched <- https://imgur.com/ULyOqSh
netsh interface show interface ethernet0
 
::all interface (stat=connected, type, name Interface) <- https://imgur.com/oPRfgiM
netsh interface show interface
 
::Rename an interface (by default, ethernet0) <- https://imgur.com/6jytqGV
netsh int set int <name interface> newname=LAN
 
::All flag for interface (metrique, limit, MTU, and son on) <- https://imgur.com/RnSFgIN
netsh interface ip show interface ethernet 0 config
 
::GUI remote app (*.dll, E.g-> advfirewall, smb, and so on) <- https://imgur.com/XLvU8CN
netsh show helper
 
::Changed DNS (need Elevated + O/P tell if found DNS valid) <- https://imgur.com/2kabKvv
netsh interface ip set dns ethernet0 static 192.168.1.1.108

::Multiples DNS  <-https://imgur.com/TFJNpgk
netsh int ip add dns name="local area connection" 10.56.0.101 index=2
netsh int ip add dns name="local area connection" 10.56.0.1 index=3

::Save configuration <-https://imgur.com/o5dOw74
netsh interface dump > \users\public\myCfgNetsh.dat
 
::Set ip static <- https://imgur.com/o8DoKKQ
netsh int ip set add "Connection Name" static 192.168.0.1 255.255.255.0 <gateway>
 
::Set DHCP <- https://imgur.com/RvqrGfV
netsh int ip set add "Connection Name" dhcp
 
::Enabled icmp (old command + deprecated) (allow ping) <- https://imgur.com/wRWIbEy
netsh firewall set icmpSetting 8
 
::Enabled or disabled <- https://imgur.com/9jhg0wv
netsh interface set interface <"Name interface"> admin=disabled
 
::Show {Private, Public, Domain, AllProfiles} <- https://imgur.com/wh15pVX
Netsh AdvFirewall show Private
 
::[Elevated] To Turn [Sate: {On|Off}] <Profile> <-https://imgur.com/0FwsVQk
Netsh AdvFirewall set Public state off

:: [Elevated] Reset NIC (E.g. hyper-v,new-netipAddress, and so on)
:: [Need Reboot : yes](https://imgur.com/HrteByL)
netsh int ip reset
