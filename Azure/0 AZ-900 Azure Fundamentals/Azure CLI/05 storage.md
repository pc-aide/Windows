# 05 storage

## Too many info
* select only
  * ResourceGroup
  * Location
  * Name
````Azure cli
storage account list -o table
````
[<img src="https://i.imgur.com/qbJEylf.png">](https://i.imgur.com/qbJEylf.png)

````Azure CLI
storage account list --query [].name -o table
````
[<img src="https://i.imgur.com/lweRo8W.png">](https://i.imgur.com/lweRo8W.png)

````Azure CLI
storage account list --query[].[name,location] -o table
````
[<img src="https://i.imgur.com/hY6hBbR.png">](https://i.imgur.com/hY6hBbR.png)

## Custom colum
````Azure CLI
storage account list --query"[].{Name:name,Location:location}" -o table
````
[<img src="https://i.imgur.com/FITpN2u.png">](https://i.imgur.com/FITpN2u.png)
* if we inverse order, same output:

[<img src="https://i.imgur.com/kLAOuyU.png">](https://i.imgur.com/kLAOuyU.png)
