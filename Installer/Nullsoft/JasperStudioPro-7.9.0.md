# JasperStudioPro-7.9.0

## Doc
* [js-7.5-User-Guid](https://docs.tibco.com/pub/js-jrs/7.5.0/doc/pdf/TIB_js-jss_7.5_User-Guide.pdf?id=5)
* [Add language](https://community.jaspersoft.com/wiki/how-install-jaspersoft-studio-translation)
* [Translation](https://community.jaspersoft.com/wiki/how-translate-jaspersoft-studio)
* [TIB_js-jrs-7.9-Support_pp10.pdf](https://docs.tibco.com/pub/js-jrs/7.9.0/doc/pdf/TIB_js-jrs_7.9_Platform-Support-Commercial-Edition.pdf?id=0)
* [TIB_js-jrs-7.9-Support_pp472.pdf](https://docs.tibco.com/pub/js-jss/7.9.0/doc/pdf/TIB_js-jss_7.9_User-Guide.pdf?id=0)
* [jdk8-downloads](https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html)

## Intro
* Publisher: TIBCO Software Inc.
* Name: TIBCO Jaspersoft Studio Professional-7.9.0
* Arch: 64-bit
* Lic: Eclipse Public Lic - v1.0
* Lang:
  * English
  * Italiano
  * more available with download
* License: yes

---

## Dependence
* Oracle JDK

---

## DDL
* Name: JasperSoft Studio Professional 7.9
* Size:
  * Installer: 863MB
  * Installed: 
    * https://edownloads.tibco.com/Installers/tap/js-jss-dev/7.9.0/TIB_js-jss-dev_7.9.0_windows_x86_64.exe?SJCDPTPG=1616083248_14b72125f691fa77bf4282cba2348213&ext=.exe
    * https://edownloads.tibco.com/Installers/tap/js-jrio-dev/2.0.0/TIB_js-jrio-pro-dev_2.0.0_win_x86_64.zip?SJCDPTPG=1616083390_df821e13ee9095a7311ec985807881dd&ext=.zip

---

## Install
* `TIB_js-studiocomm_x.y.z_windows_x86_64.exe /S`
* `TIB_js-studiocomm_x.y.z_windows_x86_64.exe /S /D=C:\TIBCO\Jaspersoft Studio`
* `TIB_js-studiocomm_x.y.z_windows_x86_64.exe /S /LICENSE=<path>`
*  

---

## InstallDir
* `%ProgramFiles\Program Files\TIBCO\Jaspersoft Studio Professional-7.9.0`

---

## *.ini
* $InstallDir\Jaspersoft Studio Professional.ini
````ini
-startup
plugins/org.eclipse.equinox.launcher_1.5.600.v20191014-2022.jar
--launcher.library
plugins/org.eclipse.equinox.launcher.win32.win32.x86_64_1.1.1100.v20190907-0426
-data
@noDefault
--launcher.defaultAction
openFile
-vm
features/jre.win32.win32.x86_64.feature_1.8.0.u151/jre/bin
-vmargs
-Xms128m
-Xmx1024m
-XX:+CMSClassUnloadingEnabled
-XX:+UseConcMarkSweepGC
-Dfile.encoding=UTF-8
-Djava.net.preferIPv4Stack=true
-Ddeployment.security.TLSv1.1=true
-Ddeployment.security.TLSv1.2=true
````

---

## License
* `$InstallDir\*.license`
* evaluation

[<img src="https://i.imgur.com/G04oDEE.png">](https://i.imgur.com/G04oDEE.png)
[<img src="https://i.imgur.com/O6WOchD.png">](https://i.imgur.com/O6WOchD.png)


---

## Shortcuts
1) `$env:Public\Dekstop\Jaspersoft Studio Professional-7.9.0.lnk`
2) `%ProgramData%\Microsoft\Windows\Start Menu\Programs\TIBCO\Jaspersoft Studio Professional 7.9.0 64bit.lnk`

[<img src="https://i.imgur.com/VlyfAJF.png">](https://i.imgur.com/VlyfAJF.png)

---

## Welcome
* Get started
* Learn More
* Collaborate
* `%UserProfile%\JaspersoftWorkspace\.metadata\.plugins\org.eclipse.e4.workbench\workbench.xmi`
     * <parti_code>
* Draft: `%UserProfile%\JaspersoftWorkspace\.metadata\.plugins\org.eclipse.core.runtime\.settings\org.eclipse.ui.prefs`


[<img src="https://i.imgur.com/nkvBZtC.png">](https://i.imgur.com/nkvBZtC.png)

---

## Start Program
[<img src="https://i.imgur.com/lNMn6dU.png">](https://i.imgur.com/lNMn6dU.png)

---

## Update
* Automatically find new updte & notify me `%UserProfile%\.eclipse\536852348_win32_win32_x86_64\p2\org.eclipse.equinox.p2.engine\profileRegistry\DefaultProfile.profile\.data\.settings\org.eclipse.equinox.p2.ui.sdk.scheduler.prefs`
````prefs
eclipse.preferences.version=1
enabled=false
fuzzy_recurrence=Once a day
lastAutoCheckForUpdates=2021-02-19T09\:06\:13.836-0500
````

[<img src="https://i.imgur.com/CRtbOhV.png">](https://i.imgur.com/CRtbOhV.png)

---

## About

[<img src="https://i.imgur.com/cFH3V5A.png">](https://i.imgur.com/cFH3V5A.png)

---

## Uninstall
* `"%ProgramFiles%\TIBCO\Jaspersoft Studio-x.y.z\uninst.exe" /S`
