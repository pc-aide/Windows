# Sequencer

## Acronym
* ADK - Assessment & Deployment Kit
* MOP - Microsoft Optimization Pack

## Prereq
* For 2004:
  * Windows 10 or higher
* For Windows 7-8.1:
  * MOP 2015
   * Windows 8.1 -> Sequencer 5.0 SP2 (5.0.3361.0)

## Steps
### 01 - ADK 2004
* URL
  * https://docs.microsoft.com/en-us/windows-hardware/get-started/adk-install

### 02 (optional) - Application Compatibility Toolkit
* Use cases
  * Run as admin
  * Mode compatibility
    * Windows XP @ 8
[<img src="https://i.ibb.co/xSH0Hh8/image.png">](https://i.ibb.co/xSH0Hh8/image.png)

---

### 02 - Sequencer
* Name: Appman Sequencer on amd64
* Version: 10.1.19041.1

[<img src="https://i.ibb.co/mS1pHBq/image.png">](https://i.ibb.co/mS1pHBq/image.png)
[<img src="https://i.ibb.co/72vgWkZ/image.png">](https://i.ibb.co/72vgWkZ/image.png)

### 03 - Disable WinDefender-WinSearch for Sequencer 5.1
````powershell
Set-ItemProperty "HKLM:\Software\Policies\Microsoft\Windows Defender" -Name DisableAntiSpyware -Value 1 -Force
````
[<img src="https://i.ibb.co/Y8y7NZX/image.png">](https://i.ibb.co/Y8y7NZX/image.png)
````cmd
sc config "wsearch" start= disabled
sc stop "wsearch"
````
[<img src="https://i.imgur.com/mIO6peD.png">](https://i.imgur.com/mIO6peD.png)

* it's done, now just backup our VM, take one new sequencing an installer
