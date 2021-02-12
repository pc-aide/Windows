# Orca

## Intro
* Read *.msi (free software) vs Admin Studio ($ software) & create *.mst (custom install)


### PNG
[<img src="https://i.imgur.com/n2brbcN.png">](https://i.imgur.com/n2brbcN.png)

---

## SRC
* Windows SDK
  * https://software-download.microsoft.com/download/pr/19041.685.201201-2105.vb_release_svc_prod1_WindowsSDK.iso

---

## *.mst
* New *.mst for remove
  * shortcuts desktop
  
[<img src="https://i.imgur.com/ekMih1I.png">](https://i.imgur.com/ekMih1I.png)
[<img src="https://i.imgur.com/GAVlvar.png">](https://i.imgur.com/GAVlvar.png)

---

## Install with *.mst
* `Start-Process msiExec -arugmentList "/i SketchUpPro2021.msi TRANSFORMS=*.mst /q /NoRestart"`
