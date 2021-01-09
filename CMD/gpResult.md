# gpResult

## Args
1) /s - system (hostname)
2) /user - domain\user
3) /p - password
4) /scope - scope (compuer | user)
5) /x - <fileName> | /h <fileName> | /f - force gpResult to overwrite the file name...
6) /r - Display RSoP summary data
7) /v - verbose <- Elevated
8) /z - super-verbose <- Elevated

---


## E.g
### 01 - Find OU
````batch
gpResult /user win8 /v /scope computer | findstr /i cn=
````
[<img src="https://i.imgur.com/AYmKj27.png">](https://i.imgur.com/AYmKj27.png)

---
 
### 02 - GPO with own registry
````batch
GpResult /s $env:computerName /user golova\win8 /z | findstr /i uev
````
[<img src="https://i.imgur.com/wfCLO9e.png">](https://i.imgur.com/wfCLO9e.png)

---

### 03 - Remote Host
````batch
gpresult /r /s computername /SCOPE COMPUTER
````
