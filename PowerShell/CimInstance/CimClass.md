# CimClass

## List CimClassName
````powershell
get-cimClassName | more
````
[<img src="https://i.imgur.com/SbYDBH6.png">](https://i.imgur.com/SbYDBH6.png)

---

## Get-member
* MemberType
  * Method
  * ScriptProperty
    * CimClassName
````powershell
get-cimClassName | get-member
````
[<img src="https://i.imgur.com/YTIpuP2.png">](https://i.imgur.com/YTIpuP2.png)
[<img src="https://i.imgur.com/Xwk9byR.png">](https://i.imgur.com/Xwk9byR.png)

---

## Count
````powershell
(get-cimClass | select cimClassName | measure).Count
````
[<img src="https://i.imgur.com/UcPiZ6m.png">](https://i.imgur.com/UcPiZ6m.png)
