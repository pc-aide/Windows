::&----------------------------------------------------------------------------------------------------
::& Syntax: net localGroup [groupName | /domain]
::& Arg:
::&    
::&----------------------------------------------------------------------------------------------------
 
::All groupName (local) <-https://imgur.com/ZzOZVDE
net localGroup
 
::Domain <-https://imgur.com/Pde2cpf
net localGroup /domain
 
::Administrators (GroupName) <- https://imgur.com/0vAlFV7
net localGroup administrators
 
::Add user
net localGroup bizagi win10 /add

:: Redirect error msg
net localGroup "Remote Desktop Users" /add vino\SteveJob 2>null

::Delete user
net localGroup "remote desktop users" vino\SteveJob
 
::Authenticated users <-https://imgur.com/9WmaTPv
net localGroup docker-users "nt authority\authenticated users" /add
