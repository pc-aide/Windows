# Select

## Alias
select -> select-object

## Syntax
@{Name='NewString'; Expression={$_.PropertyName}}

or shortName

@{N='NewString'; E={$_.PropertyName}}

### Time
### 1
````PowerShell
get-wmiObject win32_OperatingSystem |
select @{Name='LastBootTime'; Expression={$_.ConvertToDateTime($_.LastBootUpTime)}}
````
[<img src="https://i.imgur.com/D6oyzE0.png">](https://i.imgur.com/D6oyzE0.png)

### 02
````PowerShell
get-cimInstance win32_product |
select @{N='InstallDate'; E={[DateTime]::ParseExact($_.InstallDate,'ddmmyyyy',$null)}}
````
[<img src="https://i.imgur.com/Ozf3pmu.png">](https://i.imgur.com/Ozf3pmu.png)

---
