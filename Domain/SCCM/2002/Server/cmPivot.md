# cmPivot

## Intro
* The tool use RPC, so if the host i'ts not reachable, we can't use this utility from Console SCCM

---

## Shortcut key
1) F5 - Run
2) ESC - Stop

---

## Software
````sql
InstalledSoftware  
| where (ProductName like '%acrobat%' 
or ProductName like '%sketchup%') 
````
