# Intro

## Count Folders
```powershell
# Σ18 | https://imgur.com/yVluyBM
(Get-ChildItem Cert:\LocalMachine | Select Name).Count
```

## Count Subject
```powershell
# Σ154 | https://imgur.com/hmPyKWe
(Get-ChildItem Cert:\LocalMachine -Recurse | Select Subject).Count
```
