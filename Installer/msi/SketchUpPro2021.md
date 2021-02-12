# SketchUpPro2021

## Acronym
* DAO - Dessin assister par ordinateur
* DDL - Download Direct Link

## Intro
* DAO 

## URL
* https://help.sketchup.com/en/sketchup/performing-silent-install-sketchup
* https://www.sketchup.com/plans-and-pricing

## DDL
* Size
  * installer: ~198MB
  * installed: ~828MB
* https://download.flexnetoperations.com/439214/1540/367/17449367/SketchUpPro-2021-0.msi?ftpRequestID=8450260897&server=download.flexnetoperations.com&dtm=DTM20210212202929NzU3OTk4MDU3&authparam=1613190569_430e413587b5ebc6ce518ee512a4e170&ext=.msi

---

## Price
* SketchUpPro (web + desktop)
  * $299 USD/yr
* SketchUpStudio (web + desktop)
  * $1 199 USD/yr
* SketchUpShop (web only)
  * $119 USD/yr
  
---

## Extract msi from InstallShield 
* Start program install from installShield without to end of the setup
* `%LocalAppData%\Downloaded Installations\` it'will appear when setup are launched 

[<img src="https://i.imgur.com/2mrA13m.png"](https://i.imgur.com/2mrA13m.png)

* msi + pack language:

[<img src="https://i.imgur.com/TT195a3.png">](https://i.imgur.com/TT195a3.png)

* `SketchUpLanguage-2021-0-391-128-fr.msi`

[<img src="https://i.imgur.com/GcvZR4E.png">](https://i.imgur.com/GcvZR4E.png)

---

## mst
1) Shortcut
  * 3x desktop
  
[<img src="https://i.imgur.com/GAVlvar.png">](https://i.imgur.com/GAVlvar.png)


---

## Install
* `Start-process msiExec -argumentList "/i SketchUpPro-2021-0.msi TRANSFORMS=*.mst /q /noRestart"`

---

## Eula
* 

[<img src="https://i.imgur.com/zPfz2yk.png">](https://i.imgur.com/zPfz2yk.png)
