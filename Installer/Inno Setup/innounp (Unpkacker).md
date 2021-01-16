innounp (Unpkacker)

## URL
* http://innounp.sourceforge.net/

---

## Intro
* innounp, the Inno Setup Unpacker

---

## DDL
* https://netactuate.dl.sourceforge.net/project/innounp/innounp/innounp%200.50/innounp050.rar

---

## Switchs
1) -x --extract the file from the installtion (to the current directoy, also see -d)
  * It'll copy folders, eg.: 
    * {code_GetProgramDir}
    * {Code_GetToolbarDir}
    * {tmp}
    * {win}

`innounp.exe -e -y setup.exe`

[<img src="https://i.imgur.com/bcsKhZE.png">](https://i.imgur.com/bcsKhZE.png)
[<img src="https://i.imgur.com/doygddi.png">](https://i.imgur.com/doygddi.png)

2) -e --extract files without paths
  * if you want *.iss
  
3) -y --assume Yes on all queries (e.g. overwrite files)  

---

## install_script.iss
