# Intro

## Tools
* Read file *.etl - Microsoft Message Analyzer (out of date 2019)
  * [MD5 : 21F886538757F80024D1CA3CBE6A688  | MessageAnalyzer64.msi - 67MB](https://download.informer.com/win-1191544255-b8514e50-686630bb/messageanalyzer64.msi)

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
  #Reproduce the issue
  ````
  [<img src="https://i.imgur.com/tGaMIoZ.png">](https://i.imgur.com/tGaMIoZ.png)
  [<img src="https://i.imgur.com/ZjxrUxE.png">](https://i.imgur.com/ZjxrUxE.png)
  ````PowerShell
  netsh trace stop
  ````
  [<img src="https://i.imgur.com/50H5UCL.png">](https://i.imgur.com/50H5UCL.png)
  [<img src="https://i.imgur.com/0XqlMvU.png">](https://i.imgur.com/0XqlMvU.png)
