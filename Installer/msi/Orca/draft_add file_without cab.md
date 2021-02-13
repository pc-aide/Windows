## add file_without cab
---

## URL
* https://community.broadcom.com/communities/community-home/digestviewer/viewthread?MID=777101
 * `JunosPulse.x86.msi CONFIGFILE="%USERPROFILE%\Downloads\Default.jnprpreconfig" /passive`

---

## src
* https://configgirl.com/2019/01/06/how-to-add-file-to-mst/

---

### 01 - New Transform
* Transform\New Transform
  * we can see in title: ps-puse-5.2.1025-64-bit.msi ()
    * the paranthese, indicate New Transform

[<img src="https://i.imgur.com/MAXsDql.png">](https://i.imgur.com/MAXsDql.png)

* Goal : add file
* we need:
  1) Component
  2) Directory
  3) FeatureComponents
  4) file
  5) Media
  6) And depending on the msiFileHash

---

### 02 - New Component
* Tables\Component\Add Row (ctrl + r)
  * Component: ConfigFile
  * ComponentId: `[guid]::NewGuid().toString("b").ToUpper()`
  * Directory_: Temp
  * Attributes: 0

[<img src="https://i.imgur.com/Aoywzmb.png">](https://i.imgur.com/Aoywzmb.png)

---

### 03 - Directory
* Tables\Directory\Add Row (ctrl + r)
  * Directory: Temp
  * Directory_Parent: TARGETDIR
  * DefaulDir: Temp:.

[<img src="https://i.imgur.com/o3GD2cD.png">](https://i.imgur.com/o3GD2cD.png)

---

### 04 - FeatureComponents
* Tables\FeatureComponents\Add Row (ctrl + r)
  * Feature_: PulseSecure
  * Component_: ConfigFile

[<img src="https://i.imgur.com/21MmHZV.png">](https://i.imgur.com/21MmHZV.png)

---

### 05 - File
* Sort Sequence\Find the larges sequence number - new row sequence + incremente +1
* Tables\File\Add Row (ctrl + r)
  * File: Default.jnprpreconfig - the file name
  * Component_: ConfigFile
  * FileName: DEFAULT~1.JNP|Default.jnprpreconfig
    * Syntax: <short_name>|<long_name> - use dir /x int he folder that contains the folder
  * FileSize: 2581
  * Attributes: 8192
    * the file it's not a cab file. 
  * Sequence: 992
    * latest number + increment + 1

[<img src="https://i.imgur.com/8KazIIj.png">](https://i.imgur.com/8KazIIj.png)
[<img src="https://i.imgur.com/PxqNhQG.png">](https://i.imgur.com/PxqNhQG.png)
[<img src="https://i.imgur.com/pODVobe.png">](https://i.imgur.com/pODVobe.png)
[<img src="https://i.imgur.com/06OHnWX.png">](https://i.imgur.com/06OHnWX.png)

---

### 06 - Media
* Tables\Media\Add row (ctrl + row)
  * Disk Id: 2
    * next sequential number
  * LastSequence: 992
    * the sequence number provided in file table

[<img src="https://i.imgur.com/bde1nT7.png">](https://i.imgur.com/bde1nT7.png)

---

### 07 - MSIFileHash
* Tables\MSIFileHash\  - it possible don't exist some time
* Import module msi (PowerShell)
````PowerShell
Install-Module -Name MSI 
````

[<img src="https://i.imgur.com/AluskUS.png">](https://i.imgur.com/AluskUS.png)

* `get-msiFileHash -path .\Default.jnprpreconfig`

[<img src="https://i.imgur.com/KoezRNj.png">](https://i.imgur.com/KoezRNj.png)

* Add row (ctrl + r)
  * File_: Default.jnprpreconfig
  * Options: 0
  * HashPart1: <inputPowershell>
  * HashPart2: <inputPowershell>
  * HashPart3: <inputPowershell>
  * HashPart4: <inputPowershell>

[<img src="https://i.imgur.com/4s38Njp.png">](https://i.imgur.com/4s38Njp.png)

---

## Run Validation Test
* Orca\Tools\Validate (ctrl + L)
  * ICEs to Run: ICE03
  * UncheckBox: Show "INFO" Messages
  * Go

* Ensure no error

[<img src="https://i.imgur.com/LL5k6R5.png">](https://i.imgur.com/LL5k6R5.png)
[<img src="https://i.imgur.com/fZJbh5W.png">](https://i.imgur.com/fZJbh5W.png)
[<img src="https://i.imgur.com/5D8Pu46.png">](https://i.imgur.com/5D8Pu46.png)

---

## Generate Transform
