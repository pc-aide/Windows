# File Type Associations

## SRC
* https://techcult.com/wiki/how-to-remove-file-type-associations-in-windows-10/

---

## Option 1 - dism (DefaultAppAssociations.xml)
* Export defaultAppAssociations:

  * `dism /online /Export-DefaultAppAssociations:”%UserProfile%\Desktop\DefaultAppAssociations.xml”`

[<img src="https://i.imgur.com/ByZpL0z.png">](https://i.imgur.com/ByZpL0z.png)

* This would create the DefaultAppAssociations.xml file on your desktop

[<img src="https://i.imgur.com/3y2X9yx.png">](https://i.imgur.com/3y2X9yx.png)

* Import defaultAppAssocaitions:
  * `dism /online /Import-DefaultAppAssociations:”%UserProfile%\Desktop\MyDefaultAppAssociations.xml“`
  
[<img src="https://i.imgur.com/NCttBNH.png">](https://i.imgur.com/NCttBNH.png)

* Reboot your PC and you may have Restored File Type Associations in your PC.

---

## Option 2- Registries
