# group
* Manage resource groups and template deployments

## Help
* Default:
````Azure Cli
az group --help
````
[img src="https://i.imgur.com/NPWWpn8.png">](https://i.imgur.com/NPWWpn8.png)

* For switch
  * -h --help
````Azure Cli
az group create -h
````
[<img src="https://i.imgur.com/GYjcQhL.png">](https://i.imgur.com/GYjcQhL.png)

## Alias
* -o --output

## Switch
* create : Create a new resource group.
* delete : Delete a resource group.
* exists : Check if a resource group exists.
* export : Captures a resource group as a template.
* list   : List resource groups.
* show   : Gets a resource group.
* update : Update a resource group.
* wait   : Place the CLI in a waiting state until a condition of the resource group is met.

## Example
````Azure CLI
az group list --output table
````

````Azure Cli
az group list -o table
````
[<img src="https://i.imgur.com/N5uUOnr.png">](https://i.imgur.com/N5uUOnr.png)

