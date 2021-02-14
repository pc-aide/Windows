# SketchUpPro2021

## Terminology
* ActiveSetup
  * Active Setup is a mechanism for **executing commands once per user** early during login. Active Setup is used by some Microsoft Windows operating system components like Internet Explorer to set up an initial configuration for **new users logging** on for the first time.

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

## New *.mst
* Orca\Transform\New Transform - SketchUpLanguage-2021-0-391-128-fr.msi

[<img src="https://i.imgur.com/RwcWezt.png">](https://i.imgur.com/RwcWezt.png)

* Tables\Property\Add row (ctrl + r)
  * Property: INSTALLDIR - case sensitive
  * Value: C:\Program Files\SketchUp\SketchUp 2021\
  
[<img src="https://i.imgur.com/QRlduk3.png">](https://i.imgur.com/QRlduk3.png)

Orca\Transform\Generate Transform...
  * extension: save as *.mst
  
* Orca\Transform\New Transform - SketchUpPro.msi

[<img src="https://i.imgur.com/lotPHZM.png">](https://i.imgur.com/lotPHZM.png)


* Tables\Shortcut\
  * Remove 3x desktopFolder
    * LAYOUT~|Layout 2021
    * SKETCH~|SketchUp Pro2021
    * STYLEB~1|Style Builder 2021
  
[<img src="https://i.imgur.com/p5v75CU.png">](https://i.imgur.com/p5v75CU.png)

* Tables\Property\Add row (ctrl + r)
  * Property: INSTALLDIR - case sensitive
  * Value: C:\Program Files\SketchUp\SketchUp 2021\

[<img src="https://i.imgur.com/D6umKxI.png">](https://i.imgur.com/D6umKxI.png)

* Orca\Transform\Generate Transform\*.mst

---

## Install
* `Start-process msiExec -argumentList "/i SketchUpPro-2021-0.msi TRANSFORMS=*.mst /q /noRestart"`

---

## InstallDir
* `%C:\ProgramFiles%\SketchUp\SketchUp 2021\`

---

## Eula
* `%localAppData%\SketchUp\SketchUp 2021\SketchUp\PrivatePreferences.json`
````json
{
    "This Computer Only": {
        "Application": {
            "CID": "ab5dc6f3-40b7-4070-8b75-6175598dce65",
            "RunCounterSU": 1
        },
        "Common": {
            "AcceptedEULA": true
        }
    }
}
````

[<img src="https://i.imgur.com/zPfz2yk.png">](https://i.imgur.com/zPfz2yk.png)


---

## StartProgram
* Recetly Added\SketchUp Pro 2021

[<img src="https://i.imgur.com/biYEX6I.png">](https://i.imgur.com/biYEX6I.png)

* Account ID

[<img src="https://i.imgur.com/eAWwUYC.png">](https://i.imgur.com/eAWwUYC.png)
[<img src="https://i.imgur.com/Q4f4kcf.png">](https://i.imgur.com/Q4f4kcf.png)

* Account error\Cookes disabled

[<img src="https://i.imgur.com/arSIFRa.png">](https://i.imgur.com/arSIFRa.png)

---

## Too many devices connected
[<img src="https://i.imgur.com/uBPqbTG.png">](https://i.imgur.com/uBPqbTG.png)

---

## Tutorial
[<img src="https://i.imgur.com/avdW3FO.png">](https://i.imgur.com/avdW3FO.png)

---

## Welcome
* Simple
  * Metres
* Simple
  * Pouces
* Architecture
  * Pouces
* Architecture
  * Millimetres
* Architecutres
  * Centimetres
* Architecture
  * Metres
  
[<img src="https://i.imgur.com/wbD0YSo.png">](https://i.imgur.com/wbD0YSo.png)

---

## Licenses
* Plan d'abonnement
  * Essai SketchUp
* License classique
  * SketchUp Pro 2021

[<img src="https://i.imgur.com/leTswAn.png">](https://i.imgur.com/leTswAn.png)
[<img src="https://i.imgur.com/9NN794r.png">](https://i.imgur.com/9NN794r.png)

---

## Apprendre
* Forum SketchUp
  * Redirect to web: `https:forums.sketchup.com`
  
[<img src="https://i.imgur.com/vCCL0tU.png">](https://i.imgur.com/vCCL0tU.png)
[<img src="https://i.imgur.com/sZg9teu.png">](https://i.imgur.com/sZg9teu.png)

---

## Fichiers\Simple
[<img src="https://i.imgur.com/zRXa0in.png">](https://i.imgur.com/zRXa0in.png)
[<img src="https://i.imgur.com/5FLq0FA.png">](https://i.imgur.com/5FLq0FA.png)

---

## About
[<img src="https://i.imgur.com/wu1mPRR.png">](https://i.imgur.com/wu1mPRR.png)

---

## Update
* Check update

[<img src="https://i.imgur.com/z29usc2.png">](https://i.imgur.com/z29usc2.png)
[<img src="https://i.imgur.com/5Olzmhi.png">](https://i.imgur.com/5Olzmhi.png)

---

## Settings
* Fenetre\Preferences
  * Fichiers
  * General\Permettre la recherche de mise a jour
    * CheckForUpdates
      * %AppData%\SketchUp\SketchUp 2021\SketchUp\SharedPreferences.json
````json
{
    "Shared for All Computers": {
        "PageOptions": {
            "ShowTransition": true,
            "TransitionTime": 1.5
        },
        "Preferences": {
            "AutoDrawingPlane": true,
            "AviExportAntiAlias": true,
            "AviExportAR": 1.7777777777777777,
            "AviExportFPS": 24.0,
            "AviExportHeight": 720,
            "AviExportLineScale": 1.0,
            "AviExportLockAR": true,
            "AviExportLoop": true,
            "AviExportPlay": false,
            "AviExportPrompt": false,
            "AviExportWidth": 1280,
            "CheckForUpdates": false,
            "DisplayTabs": true,
            "MaxUndo": 100,
            "NotifyAfterFix": false,
            "ShowInferenceTips": true,
            "UpdateDefaultColorOn": true,
            "UpdateDefaultOn": true,
            "VCBShowTypedInputBackground": true,
            "VCBTimoutSeconds": 5
        },
        "SlideshowOptions": {
            "LoopSlideshow": true,
            "SlideTime": 1.0
        }
    },
    "Windows Only": {
        "PrintOptions": {
            "ComputeSizeFromScale": false,
            "FitToPage": true,
            "LineWeight": 0.5,
            "ModelExtents": true,
            "NumberOfPages": 1,
            "PixelsPerInch": 150.0,
            "PrintHeight": 11.0,
            "PrintQuality": 0,
            "PrintWidth": 8.5,
            "QualityAdjustment": 1.0,
            "ScaleAdjustment": 1.0,
            "SectionSlice": false,
            "SizeInModel": 1.0,
            "SizeInPrint": 1.0,
            "VectorMode": false
        }
    },
    "Mac Only": {},
    "Web Only": {},
    "iOS Only": {},
    "Android Only": {},
    "timestamp": 1613230991694
}
````

[<img src="https://i.imgur.com/CkbktWw.png">](https://i.imgur.com/CkbktWw.png)
[<img src="https://i.imgur.com/jJF9KlS.png">](https://i.imgur.com/jJF9KlS.png)
[<img src="https://i.imgur.com/auHrORg.png">](https://i.imgur.com/auHrORg.png)
[<img src="https://i.imgur.com/yCbAobl.png">](https://i.imgur.com/yCbAobl.png)

---

## Style Builder
[<img src="https://i.imgur.com/P5sBIR0.png">](https://i.imgur.com/P5sBIR0.png)

* save as *.skp

[<img src="https://i.imgur.com/eqrZ7IT.png">](https://i.imgur.com/eqrZ7IT.png)
[<img src="https://i.imgur.com/U8fx5Lz.png">](https://i.imgur.com/U8fx5Lz.png)

* Edition\Preferences..

[<img src="https://i.imgur.com/dWjfmD1.png">](https://i.imgur.com/dWjfmD1.png)
[<img src="https://i.imgur.com/DzqFYdM.png">](https://i.imgur.com/DzqFYdM.png)

---

## Layout 2021
* Welcome Layout 

[<img src="https://i.imgur.com/dEVs9ge.png">](https://i.imgur.com/dEVs9ge.png)

* A3 Payage

[<img src="https://i.imgur.com/cI0NNwi.png">](https://i.imgur.com/cI0NNwi.png)

[<img src="https://i.imgur.com/8Rnjj4B.png">](https://i.imgur.com/8Rnjj4B.png)

* Edition\Preferences\Demarrage\Check for update:
* `%LocalAppData%\SketchUp\SketchUp 2021\LayOut\layout.private.json`
````json
{
    "Shared for All Computers": {
        "PageOptions": {
            "ShowTransition": true,
            "TransitionTime": 1.5
        },
        "Preferences": {
            "AutoDrawingPlane": true,
            "AviExportAntiAlias": true,
            "AviExportAR": 1.7777777777777777,
            "AviExportFPS": 24.0,
            "AviExportHeight": 720,
            "AviExportLineScale": 1.0,
            "AviExportLockAR": true,
            "AviExportLoop": true,
            "AviExportPlay": false,
            "AviExportPrompt": false,
            "AviExportWidth": 1280,
            "CheckForUpdates": false,
            "DisplayTabs": true,
            "MaxUndo": 100,
            "NotifyAfterFix": false,
            "ShowInferenceTips": true,
            "UpdateDefaultColorOn": true,
            "UpdateDefaultOn": true,
            "VCBShowTypedInputBackground": true,
            "VCBTimoutSeconds": 5
        },
        "SlideshowOptions": {
            "LoopSlideshow": true,
            "SlideTime": 1.0
        }
    },
    "Windows Only": {
        "PrintOptions": {
            "ComputeSizeFromScale": false,
            "FitToPage": true,
            "LineWeight": 0.5,
            "ModelExtents": true,
            "NumberOfPages": 1,
            "PixelsPerInch": 150.0,
            "PrintHeight": 11.0,
            "PrintQuality": 0,
            "PrintWidth": 8.5,
            "QualityAdjustment": 1.0,
            "ScaleAdjustment": 1.0,
            "SectionSlice": false,
            "SizeInModel": 1.0,
            "SizeInPrint": 1.0,
            "VectorMode": false
        }
    },
    "Mac Only": {},
    "Web Only": {},
    "iOS Only": {},
    "Android Only": {},
    "timestamp": 1613230991694
}
````

[<img src="https://i.imgur.com/0AglTqw.png">](https://i.imgur.com/0AglTqw.png)
[<img src="https://i.imgur.com/sRrUIKG.png">](https://i.imgur.com/sRrUIKG.png)

---

## Process
|n|Name        |
|-|------------|
|1|SketchUp.exe|
|2|sketchup_webhelper.exe|
|3|Style builder|
|4|LayOut       |

---

## Uninstall
1) PackageLangFr:
* Orca\Tables\Property\ProductCode: `{62798017-bca6-d674-bba7-7c85ccc7db73}`
  * `Start-process msiExec -argumentList "/x {62798017-bca6-d674-bba7-7c85ccc7db73} /q /noRestart"`

2) SketchUp
* Orca\Tables\Property\ProductCode: `{d355be80-c8d8-9076-14e8-5ae3c8f487b0}`
  * `Start-process msiExec -argumentList "/x {d355be80-c8d8-9076-14e8-5ae3c8f487b0} /q /noRestart"`
  * uninstaller_helper.exe
    * Time: ~2s
    
[<img src="https://i.imgur.com/EJ24pPA.png">](https://i.imgur.com/EJ24pPA.png)

---

## Traces After Uninstall1
### Files
1) Traces-Files-01: `C:\Program Files\SketchUp\SketchUp 2021`
2) Traces-Files-02: `%ProgramData\SketchUp\`

### ActiveSetup
1) Traces-ActiveSetup-01: `%AppData%\SketchUp\`
2) Traces-ActiveSetup-02: `%LocalAppData%\SketchUp\`

### Registries

#### HKU
1) Trace-HKU-01: `get-Item HKCU:\Software\SketchUp\`
  * nt authority system
````powershell
New-PSDrive HKU Registry HKEY_USERS -ErrorAction SitlentlyContinue
Remove-Item "HKU:\*\Software\SketchUp\" -Force -Recurse -ErrorAction SitlentlyContinue
````

[<img src="https://i.imgur.com/YEiLnor.png">](https://i.imgur.com/YEiLnor.png)

#### HKLM
1) Trace-HKLM-01: `Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Installer\Folders -Name "C:\Program Files\SketchUp*\"`
  * Many-files

[<img src="https://i.imgur.com/eyC23NB.png">](https://i.imgur.com/eyC23NB.png)
[<img src="https://i.imgur.com/1jdXoYU.png">](https://i.imgur.com/1jdXoYU.png)

2) Trace-HKLM-02: `Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Installer\Folders -Name "C:\ProgramData\SketchUp*"`
