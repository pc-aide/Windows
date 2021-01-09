# 05 Exercise - Create the policy definition

## Acronym
* SA - Storage Account
* RG - Resource group

##  URL
* https://docs.microsoft.com/en-ca/learn/modules/control-and-organize-with-azure-resource-manager/4-use-policies-to-enforce-standards

## Steps
### Definition
1) Click on = Policy definition:
   * Definition location: Essai gratuit
   * Name: Enforce tag on resource
   * Category: Use existing
     * General
   * Past this json into Policy rule:
````json
{
  "mode": "Indexed",
  "policyRule": {
    "if": {
      "field": "[concat('tags[', parameters('tagName'), ']')]",
      "exists": "false"
    },
    "then": {
      "effect": "deny"
    }
  },
  "parameters": {
    "tagName": {
      "type": "String",
      "metadata": {
        "displayName": "Tag Name",
        "description": "Name of the tag, such as 'environment'"
      }
    }
  }
}
````
### Assignement
1) Clic on Aissign policy:
  * Scope 
   * Subscription: Essai gratui
   * Resource group: PC-Aide-Resoures-RG
  * Basics definition:  Enforce tag on resources

[<img src="https://i.imgur.com/QFYPIw1.png">](https://i.imgur.com/QFYPIw1.png)

2) Go to Parameters:
* Tag Name:
 * Departement
 
[<img src="https://i.imgur.com/KeDdXZM.png">](https://i.imgur.com/KeDdXZM.png)

* Done (review + create):

[<img src="https://i.imgur.com/p5HuCwl.png">](https://i.imgur.com/p5HuCwl.png)

3) Test101
* Dashboard\PC-Aide\Resources-RG\New\Virtual Network:

[<img src="https://i.imgur.com/WSm7Epb.png">](https://i.imgur.com/WSm7Epb.png)

4) Fail deployment:
````log
Resource 'Resource-vnet01' was disallowed by policy. Policy identifiers: '[{"policyAssignment":{"name":"Enforce tag on resources","id":"/subscriptions/f24f0c3f-11c8-4e86-982f-ece0d5d19882/resourceGroups/PC-Aide-Resources-RG/providers/Microsoft.Authorization/policyAssignments/9ac956654e67425fb76147a7"},"policyDefinition":{"name":"Enforce tag on resources","id":"/subscriptions/f24f0c3f-11c8-4e86-982f-ece0d5d19882/providers/Microsoft.Authorization/policyDefinitions/8242187e-5227-4ff8-b011-bb58a2f6337d"}}]'. Click here for details
````

[<img src="https://i.imgur.com/J5347PE.png">](https://i.imgur.com/J5347PE.png)
[<img src="https://i.imgur.com/L3U5gHS.png">](https://i.imgur.com/L3U5gHS.png)

5) so try again with tag:

[<img src="https://i.imgur.com/C1Ehd6p.png">](https://i.imgur.com/C1Ehd6p.png)
[<img src="https://i.imgur.com/JUQpah6.png">](https://i.imgur.com/JUQpah6.png)
[<img src="https://i.imgur.com/LVBxzPO.png">](https://i.imgur.com/LVBxzPO.png)
[<img src="https://i.imgur.com/FK9ku9g.png">](https://i.imgur.com/FK9ku9g.png)
[<img src="https://i.imgur.com/5zzhBwO.png">](https://i.imgur.com/5zzhBwO.png)
