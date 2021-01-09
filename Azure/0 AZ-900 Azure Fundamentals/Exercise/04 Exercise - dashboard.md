# 04 Exercise - dashboard

## URL
* https://docs.microsoft.com/en-ca/learn/modules/tour-azure-portal/7-exercise-customize-the-dashboard

## Goal

## Steps
1) New Dashboard
  * Name: Customer Dashboard
  * Add:
    * Clocks:
      * 01
        * Pacific Time (US & Canada), Eastern Time (US & Canda)
        * Format: 24 hour
    * All resources:
      * Size: 4x6
    * Resource groups:
      * Position: underneath -> all resources
    * Metrics chart:
      * Position: right of the all resources
    * Help + support, Quick tasks, Marketplace:
      * postition: anywhere
  * Done customizing
  
2) Clone a dashboard
* Select clone
* Rename: Azure AD Admin Dashboard
* Remove resource groups
* Add:
  * Organization Identity
  * Users & groups
  * User Activity Summary
* Done customizing

3) Share
* Share :
  * uncheck : Publish to the 'dashboards' resource group checkbox
  * checkbox: learn-<ID_Sandbox>
  * Publish: error normal, so close this window
  
4) json
* Download
* Edit our file *.json
  * look" ClockPart
    * First occurence: change rowSpan value to 1
    * Second occurence: idem
    * Second occurence: change value the y from 2 to 1
* Save json
* Upload

5) Delete
* del Azure AD Admin

6) Reset
* Select Customer Dashboard
* Edit
* Reset dashboard to default state
* Done customizing
* Sign out
