#
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Env:public\desktop\Raccourci_name.lnk")
$Shortcut.TargetPath = "$env:systemroot\system32\WindowsPowerShell\v1.0\powershell.exe"
#Optional
$Shortcut.Arguments = "whoami /group"
$Shortcut.Save()
