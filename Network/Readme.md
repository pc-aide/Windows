# Intro

## Route
````Batch
route print
````
[<img src="https://i.imgur.com/5hVrZH5.png">](https://i.imgur.com/5hVrZH5.png)
````Batch
REM route ADD destination_network MASK subnet_mask  gateway_ip metric_cost
````

## netsh
1) Trace
  ````PowerShell
  netsh trace start capture=yes TraceFile=C:\Temp\MyTraceWeb.etl
  #Reproduce your environment
  ````
