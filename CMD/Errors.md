# Redirecting Error msg from CMD: STDERR/STDOUT

## Syntax
*.exe 2>nul | path

## STD Error (2>)
````Batch
REM https://imgur.com/6iVSde3
net localGroup "remote desktop users" /add vino\SteveJob 2>nul
REM if you used console PS, so used $null
net dir test101 2> $null
````

## STD Out (1>)
````Batch
REM https://imgur.com/YRgZqeL
net localGroup "remote desktop users" /delete vino\SteveJob 1>OutPut.txt
````
## STD Out & SDT Error
````Batch
REM we can omit the number "1" only for std outPut
dir file.xxx > output.msg 2> output.err
````

## STD {Out + Error} (2>&1)
````Batch
REM 
dir file.xxx 1> output.msg 2>&1
```` 
