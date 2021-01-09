# Dashboard

## Acronym
* RBAC - role-based access control

## Home
[<img src="https://i.imgur.com/WHsZfPA.png">](https://i.imgur.com/WHsZfPA.png)

### New Dashboard
* Resource groups
* Metrics chart
* markdown

[<img src="https://i.imgur.com/j76d730.png">](https://i.imgur.com/j76d730.png)
[<img src="https://i.imgur.com/5MtflaR.png">](https://i.imgur.com/5MtflaR.png)

## Export
* json 01
````json
{
  "properties": {
    "lenses": {
      "0": {
        "order": 0,
        "parts": {
          "0": {
            "position": {
              "x": 0,
              "y": 0,
              "colSpan": 4,
              "rowSpan": 6
            },
            "metadata": {
              "inputs": [
                {
                  "name": "resourceType",
                  "value": "Microsoft.Resources/resources"
                }
              ],
              "type": "Extension/HubsExtension/PartType/BrowseAllResourcesPinnedPart",
              "viewState": {
                "content": {
                  "selectableData": {}
                }
              }
            }
          },
          "1": {
            "position": {
              "x": 4,
              "y": 2,
              "colSpan": 4,
              "rowSpan": 5
            },
            "metadata": {
              "inputs": [],
              "type": "Extension/HubsExtension/PartType/GettingStartedPart"
            }
          },
          "2": {
            "position": {
              "x": 0,
              "y": 6,
              "colSpan": 2,
              "rowSpan": 1
            },
            "metadata": {
              "inputs": [],
              "type": "Extension/Microsoft_Azure_Health/PartType/ServiceIssuesPinnedPart"
            }
          },
          "3": {
            "position": {
              "x": 2,
              "y": 6,
              "colSpan": 2,
              "rowSpan": 1
            },
            "metadata": {
              "inputs": [
                {
                  "name": "selectedMenuItemId",
                  "value": "",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/GalleryTile"
            }
          }
        }
      }
    },
    "metadata": {
      "model": {
        "timeRange": {
          "value": {
            "relative": {
              "duration": 24,
              "timeUnit": 1
            }
          },
          "type": "MsPortalFx.Composition.Configuration.ValueTypes.TimeRange"
        }
      }
    }
  },
  "name": "My Dashboard",
  "type": "Microsoft.Portal/dashboards",
  "location": "INSERT LOCATION",
  "tags": {
    "hidden-title": "My Dashboard"
  },
  "apiVersion": "2015-08-01-preview"
}
````

* json 02:
````json
{
  "properties": {
    "lenses": {
      "0": {
        "order": 0,
        "parts": {
          "0": {
            "position": {
              "x": 0,
              "y": 0,
              "colSpan": 4,
              "rowSpan": 6
            },
            "metadata": {
              "inputs": [
                {
                  "name": "resourceType",
                  "value": "Microsoft.Resources/resources"
                }
              ],
              "type": "Extension/HubsExtension/PartType/BrowseAllResourcesPinnedPart",
              "viewState": {
                "content": {
                  "selectableData": {}
                }
              }
            }
          },
          "1": {
            "position": {
              "x": 4,
              "y": 0,
              "colSpan": 4,
              "rowSpan": 5
            },
            "metadata": {
              "inputs": [],
              "type": "Extension/HubsExtension/PartType/GettingStartedPart"
            }
          },
          "2": {
            "position": {
              "x": 8,
              "y": 0,
              "colSpan": 2,
              "rowSpan": 1
            },
            "metadata": {
              "inputs": [
                {
                  "name": "selectedMenuItemId",
                  "value": "",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/GalleryTile"
            }
          },
          "3": {
            "position": {
              "x": 8,
              "y": 1,
              "colSpan": 2,
              "rowSpan": 2
            },
            "metadata": {
              "inputs": [],
              "type": "Extension/HubsExtension/PartType/ClockPart",
              "settings": {
                "content": {
                  "settings": {
                    "timezoneId": "Eastern Standard Time",
                    "timeFormat": "HH:mm",
                    "version": 1
                  }
                }
              }
            }
          },
          "4": {
            "position": {
              "x": 8,
              "y": 3,
              "colSpan": 2,
              "rowSpan": 2
            },
            "metadata": {
              "inputs": [],
              "type": "Extension/HubsExtension/PartType/ClockPart",
              "settings": {
                "content": {
                  "settings": {
                    "timezoneId": "Tokyo Standard Time",
                    "timeFormat": "HH:mm",
                    "version": 1
                  }
                }
              }
            }
          }
        }
      }
    },
    "metadata": {
      "model": {
        "timeRange": {
          "value": {
            "relative": {
              "duration": 24,
              "timeUnit": 1
            }
          },
          "type": "MsPortalFx.Composition.Configuration.ValueTypes.TimeRange"
        }
      }
    }
  },
  "name": "Sandbox-Dashboard",
  "type": "Microsoft.Portal/dashboards",
  "location": "INSERT LOCATION",
  "tags": {
    "hidden-title": "Sandbox-Dashboard"
  },
  "apiVersion": "2015-08-01-preview"
}
````

## Sharing
[<img src="https://i.imgur.com/eEQjiVG.png">](https://i.imgur.com/eEQjiVG.png)

## upload
[<img src="https://i.imgur.com/vJTWHHE.png">](https://i.imgur.com/vJTWHHE.png)
