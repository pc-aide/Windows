# win32_directory

## Doc
* https://www.jaapbrasser.com/search-for-files-using-wmi/

---

## Class
* win32_directory

---

## Namespace
* root\cimv2

---

## Get-Member
* 

---

## E.g.
### 01 - default
* `get-wmiObject win32_directory | select -first 2`
[<img src="https://i.imgur.com/BtKdVcy.png">](https://i.imgur.com/BtKdVcy.png)

### 02 - specific path
* Use double backslash for each folder
* % -> wildcard -> all
* `Get-WmiObject -Query "select * from win32_directory where name like 'c:\\users\\%\\.azure%'"`
[<img src="https://i.imgur.com/eKrNb90.png">](https://i.imgur.com/eKrNb90.png)
