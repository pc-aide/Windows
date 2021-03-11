# cmPivot

## Intro
* the tool use RPC, so if the host i'ts not reachable, we use this utility from Console SCCM

---

## Shortcut key
1) F5 - run
2) ESC - stop

---

## Software
````sql
InstalledSoftware  
| where (ProductName like '%acrobat%' 
or ProductName like '%sketchup%') 
````
