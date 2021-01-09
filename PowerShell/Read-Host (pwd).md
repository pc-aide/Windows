# Read-Host (pwd)

## Password
````powershell
$PWD = Read-Host "Enter PWD" -AssecureString | ConvertFrom-SecureString
````
[<img src="https://i.imgur.com/mambv6v.png">](https://i.imgur.com/mambv6v.png)

## Hash
````powershell
echo $PWD 
````
[<img src="https://i.imgur.com/If3pyZp.png">](https://i.imgur.com/If3pyZp.png)
