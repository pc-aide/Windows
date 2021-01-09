# 09 Apply and monitor infrastructure standards with Azure Policy

## Acronym
* OU - Organization Unit

## Overview
[<img src="https://i.imgur.com/UrH8UWS.png">](https://i.imgur.com/UrH8UWS.png)

## URL
* https://docs.microsoft.com/en-ca/learn/modules/intro-to-governance/1-introduction

## Policy
[<img src="https://i.imgur.com/FLEq2qB.png">](https://i.imgur.com/FLEq2qB.png)
* E.g.
  * VM allow some size in your environment
  * a policy that prohibits the creation of any VM with more than 4 CPUs
  
[<img src="https://i.imgur.com/KCRg0m0.png">](https://i.imgur.com/KCRg0m0.png)

* certificates should have the specified maximum validity period
````json
{
  "properties": {
    "displayName": "[Preview]: Certificates should have the specified maximum validity period",
    "policyType": "BuiltIn",
    "mode": "Microsoft.KeyVault.Data",
    "description": "Manage your organizational compliance requirements by specifying the maximum amount of time that a certificate can be valid within your key vault.",
    "metadata": {
      "version": "2.0.0-preview",
      "category": "Key Vault",
      "preview": true
    },
    "parameters": {
      "maximumValidityInMonths": {
        "type": "Integer",
        "metadata": {
          "displayName": "[Preview]: The maximum validity in months",
          "description": "The limit to how long a certificate may be valid for. Certificates with lengthy validity periods aren't best practice."
        }
      },
      "effect": {
        "type": "String",
        "metadata": {
          "displayName": "[Preview]: Effect",
          "description": "'Audit' allows a non-compliant resource to be created, but flags it as non-compliant. 'Deny' blocks the resource creation. 'Disable' turns off the policy."
        },
        "allowedValues": [
          "audit",
          "deny",
          "disabled"
        ],
        "defaultValue": "audit"
      }
    },
    "policyRule": {
      "if": {
        "allOf": [
          {
            "field": "type",
            "equals": "Microsoft.KeyVault.Data/vaults/certificates"
          },
          {
            "field": "Microsoft.KeyVault.Data/vaults/certificates/properties.validityInMonths",
            "greater": "[parameters('maximumValidityInMonths')]"
          }
        ]
      },
      "then": {
        "effect": "[parameters('effect')]"
      }
    }
  },
  "id": "/providers/Microsoft.Authorization/policyDefinitions/0a075868-4c26-42ef-914c-5bc007359560",
  "type": "Microsoft.Authorization/policyDefinitions",
  "name": "0a075868-4c26-42ef-914c-5bc007359560"
}
````

### Definitions
* A policy definition expresses what to evaluate and what action to take.
 * E.g: force a psecific version of SQL Server to be used

[<img src="https://i.imgur.com/L3W48XT.png">](https://i.imgur.com/L3W48XT.png)

#### Table
* Most common policy definition:

| N | Policy definition            | Description                                                                                                                                                                                                                                       |
| - | ---------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1 | Allowed Storage Account SKUs | This policy definition has a set of conditions/rules that determine whether a storage account that is being deployed is within a set of SKU sizes. Its effect is to deny all storage accounts that do not adhere to the set of defined SKU sizes. |
| 2 | Allowed Resource Type        | This policy definition has a set of conditions/rules to specify the resource types that your organization can deploy. Its effect is to deny all resources that are not part of this defined list.                                                 |
| 3 | Allowed Locations            | This policy enables you to restrict the locations that your organization can specify when deploying resources. Its effect is used to enforce your geographic compliance requirements.                                                             |
| 4 | Allowed Virtual Machine SKUs | This policy enables you to specify a set of VM SKUs that your organization can deploy.                                                                                                                                                            |
| 5 | Not allowed resource types   | Prevents a list of resource types from being deployed.                                                                                                                                                                                            |

* Allowed storage account SKUs:

[<img src="https://i.imgur.com/xjPtZKp.png">](https://i.imgur.com/xjPtZKp.png)
````json
{
  "properties": {
    "displayName": "Allowed storage account SKUs",
    "policyType": "BuiltIn",
    "mode": "Indexed",
    "description": "This policy enables you to specify a set of storage account SKUs that your organization can deploy.",
    "metadata": {
      "version": "1.0.0",
      "category": "Storage"
    },
    "parameters": {
      "listOfAllowedSKUs": {
        "type": "Array",
        "metadata": {
          "description": "The list of SKUs that can be specified for storage accounts.",
          "displayName": "Allowed SKUs",
          "strongType": "StorageSKUs"
        }
      }
    },
    "policyRule": {
      "if": {
        "allOf": [
          {
            "field": "type",
            "equals": "Microsoft.Storage/storageAccounts"
          },
          {
            "not": {
              "field": "Microsoft.Storage/storageAccounts/sku.name",
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
  "id": "/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1",
  "type": "Microsoft.Authorization/policyDefinitions",
  "name": "7433c107-6db4-4ad1-b57a-a76dce0154a1"
}
````
### Github
* https://github.com/Azure/azure-policy

### Compliance
[<img src="https://i.imgur.com/v4zZt9S.png">](https://i.imgur.com/v4zZt9S.png)

* on ASC Default | 118 policies | 100% resource compliance:

[<img src="https://i.imgur.com/hYyRR6L.png">](https://i.imgur.com/hYyRR6L.png)

### Assignments
[<img src="https://i.imgur.com/HVzPQOt.png">](https://i.imgur.com/HVzPQOt.png)

### Policy effects
### Table
| N | Policy Effect           | What happens?                                                                                                                                                                                             |
| - | ----------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1 | Deny                    | The resource creation/update fails due to policy.                                                                                                                                                         |
| 2 | Disabled                | The policy rule is ignored (disabled). Often used for testing.                                                                                                                                            |
| 3 | Append                  | Adds additional parameters/fields to the requested resource during creation or update. A common example is adding tags on resources such as Cost Center or specifying allowed IPs for a storage resource. |
| 4 | Audit, AuditIfNotExists | Creates a warning event in the activity log when evaluating a non-compliant resource, but it doesn't stop the request.                                                                                    |
| 5 | DeployIfNotExists       | Executes a template deployment when a specific condition is met. For example, if SQL encryption is enabled on a database, then it can run a template after the DB is created to set it up a specific way. |

[<img src="https://i.imgur.com/MrENPek.png">](https://i.imgur.com/MrENPek.png)

* Compliance: Storage account public access should be disallowed:

[<img src="https://i.imgur.com/NCY5voT.png">](https://i.imgur.com/NCY5voT.png)

* policy def(json):
````json
{
  "properties": {
    "displayName": "[Preview]: Storage account public access should be disallowed",
    "policyType": "BuiltIn",
    "mode": "Indexed",
    "description": "Anonymous public read access to containers and blobs in Azure Storage is a convenient way to share data, but may also present a security risk. Disallowing public access to the storage account prevents a user from enabling public access for a container in the account. Microsoft recommends that you disallow public access to a storage account unless your scenario requires it. Disallowing public access helps to prevent data breaches caused by undesired anonymous access.",
    "metadata": {
      "version": "1.0.0-preview",
      "category": "Storage",
      "preview": true
    },
    "parameters": {
      "effect": {
        "type": "String",
        "metadata": {
          "displayName": "[Preview]: Effect",
          "description": "The effect determines what happens when the policy rule is evaluated to match"
        },
        "allowedValues": [
          "audit",
          "deny",
          "disabled"
        ],
        "defaultValue": "audit"
      }
    },
    "policyRule": {
      "if": {
        "allOf": [
          {
            "field": "type",
            "equals": "Microsoft.Storage/storageAccounts"
          },
          {
            "not": {
              "field": "Microsoft.Storage/storageAccounts/allowBlobPublicAccess",
              "equals": "false"
            }
          }
        ]
      },
      "then": {
        "effect": "[parameters('effect')]"
      }
    }
  },
  "id": "/providers/Microsoft.Authorization/policyDefinitions/4fa4b6c0-31ca-4c0d-b10d-24b96f62a751",
  "type": "Microsoft.Authorization/policyDefinitions",
  "name": "4fa4b6c0-31ca-4c0d-b10d-24b96f62a751"
}
````

### Initiative
* like GPO
 * parameters (registry or file) = json
 * AGPOComputerOffice15.0 = many parameters = an assignement
 * we can used scope = OU or filter WMI, or other filter
 
[<img src="https://i.imgur.com/xvX7Yew.png">](https://i.imgur.com/xvX7Yew.png)
 
* An initiative definition is a set or group of policy definitions
 * an assignemnts (ASC Default...) with 118 policies:
 
 [<img src="https://i.imgur.com/oY1Aomo.png">](https://i.imgur.com/oY1Aomo.png)
 
 * parameters (policy effects):
 
 [<img src="https://i.imgur.com/9mYOV4c.png">](https://i.imgur.com/9mYOV4c.png)

## Management groups
* Root group:

[<img src="https://i.imgur.com/XxqAfs8.png">](https://i.imgur.com/XxqAfs8.png)

* we cant create six level group
* Azure AD OU can support 10k managment groups
 * First level group:
 
[<img src="https://i.imgur.com/HwfMu80.png">](https://i.imgur.com/HwfMu80.png)

* second level group:

[<img src="https://i.imgur.com/YumzBCO.png">](https://i.imgur.com/YumzBCO.png)

* second level group\\<add subscription it-adminUser01\>
* this level we can attach one or multiple policies

[<img src="https://i.imgur.com/pQBu4sB.png">](https://i.imgur.com/pQBu4sB.png)
* creating a hierarchy for governance:

[<img src="https://i.imgur.com/d7sWaXM.png">](https://i.imgur.com/d7sWaXM.png)
[<img src="https://i.imgur.com/y80m5wh.png">](https://i.imgur.com/y80m5wh.png)

## Blueprints
* Blueprints enable quick creation of governed subscriptions. This allows Cloud Architects
  to **design environments** that comply with organizational standards and best practices
  – enabling your app teams to get to production faster.
* a declarative way to orchestrate the deployment of:
  * Role
  * Policy
  * Resource manager templates
  * Resource groups
* Home:

[<img src="https://i.imgur.com/ks1a67J.png">](https://i.imgur.com/ks1a67J.png)

### Create blueprint
* Templates:

[<img src="https://i.imgur.com/MpTa2D8.png">](https://i.imgur.com/MpTa2D8.png)
[<img src="https://i.imgur.com/Q2lwwDw.png">](https://i.imgur.com/Q2lwwDw.png)

* Black blueprint:

[<img src="https://i.imgur.com/fWPW7C6.png">](https://i.imgur.com/fWPW7C6.png)

* Artifacts:

[<img src="https://i.imgur.com/T3nFzQZ.png">](https://i.imgur.com/T3nFzQZ.png)

* Add artfact:
  * Policy
  * Role
  * Resource manager template
  * Resource group
  
[<img src="https://i.imgur.com/5RD3Moi.png">](https://i.imgur.com/5RD3Moi.png)

* Policy:

[<img src="https://i.imgur.com/X0V3rVH.png">](https://i.imgur.com/X0V3rVH.png)

* after done
 * Apply to scope
 * Track assignments
 
[<img src="https://i.imgur.com/eExE2JV.png">](https://i.imgur.com/eExE2JV.png)

## Monitor
* Metrics
* Query & logs
* Alert & actions

[<img src="https://i.imgur.com/Bgc6KIi.png">](https://i.imgur.com/Bgc6KIi.png)

### Metrics
* VM :

[<img src="https://i.imgur.com/XahMGi6.png">](https://i.imgur.com/XahMGi6.png)

* ports open(default):

[<img src="https://i.imgur.com/Gi6402x.png">](https://i.imgur.com/Gi6402x.png)

## Application Insights
[<img src="https://i.imgur.com/Yhtrpm5.png">](https://i.imgur.com/Yhtrpm5.png)

### Service Health
[<img src="https://i.imgur.com/4WqwTL0.png">](https://i.imgur.com/4WqwTL0.png)
[<img src="https://i.imgur.com/pIf7UbG.png">](https://i.imgur.com/pIf7UbG.png)
