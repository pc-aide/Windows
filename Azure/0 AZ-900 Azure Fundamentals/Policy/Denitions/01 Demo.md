# 01 Demo

## List
* filter: Allowd virtual machine size SKUs
````json
{
  "properties": {
    "displayName": "Allowed virtual machine size SKUs",
    "policyType": "BuiltIn",
    "mode": "Indexed",
    "description": "This policy enables you to specify a set of virtual machine size SKUs that your organization can deploy.",
    "metadata": {
      "version": "1.0.1",
      "category": "Compute"
    },
    "parameters": {
      "listOfAllowedSKUs": {
        "type": "Array",
        "metadata": {
          "description": "The list of size SKUs that can be specified for virtual machines.",
          "displayName": "Allowed Size SKUs",
          "strongType": "VMSKUs"
        }
      }
    },
    "policyRule": {
      "if": {
        "allOf": [
          {
            "field": "type",
            "equals": "Microsoft.Compute/virtualMachines"
          },
          {
            "not": {
              "field": "Microsoft.Compute/virtualMachines/sku.name",
              "in": "[parameters('listOfAllowedSKUs')]"
            }
          }
        ]
      },
      "then": {
        "effect": "Deny"
      }
    }
  },
  "id": "/providers/Microsoft.Authorization/policyDefinitions/cccc23c7-8427-4f53-ad12-b6a63eb452b3",
  "type": "Microsoft.Authorization/policyDefinitions",
  "name": "cccc23c7-8427-4f53-ad12-b6a63eb452b3"
}
````

* we can duplicate
  * we add to end - PC-Aide:
  
[<img src="https://i.imgur.com/v42LJ4Q.png">](https://i.imgur.com/v42LJ4Q.png)

## Initiative definition
* Clic on + Initiative definition: 

[<img src="https://i.imgur.com/0HDX9HU.png">](https://i.imgur.com/0HDX9HU.png)

* Select 2x definitions
  * Alloed virtual machine size SKUs - PC-Aide
  * Enforce tag on resources
* Name initiative: Initiative Resources-RG
* Parameters
  * Tag Name\Set Value: Departement
  * Allowed Size SKUs\Set value: Standard_D2_v3

[<img src="https://i.imgur.com/7Y1jQks.png">](https://i.imgur.com/7Y1jQks.png)

## Assignments
* Clic on Assign initiative:

[<img src="https://i.imgur.com/MyVSyAk.png">](https://i.imgur.com/MyVSyAk.png)

* Scope: PC-Aide-Resources-RG
* Basic: Initiative Rsources-RG
* Create

[<img src="https://i.imgur.com/1WiP7X6.png">](https://i.imgur.com/1WiP7X6.png)

## Test
* Vailidation: create a VM -> failled:
  
[<img src="https://i.imgur.com/synvnMM.png">](https://i.imgur.com/synvnMM.png)
[<img src="https://i.imgur.com/iyBLNXK.png">](https://i.imgur.com/iyBLNXK.png)
