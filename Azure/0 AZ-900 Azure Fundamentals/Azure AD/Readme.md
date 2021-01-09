# Azure AD

## Doc
* [Custom administrator roles in Azure Active Directory (preview)](https://docs.microsoft.com/en-ca/azure/active-directory/users-groups-roles/roles-custom-overview)

## Subscription
* First time, need a subscription
	* Free trial ($250 credit for 30d)

## Custom domain names
 	* suffix: .onmicrosoft.com
* Add custom domain
	* Need **TXT record** with your domain name registrator if you have your own DNS Public
	* Name: PC-Aide-Lab.onmicrosoft.com

## New user
* Create user | Invite user
* Create user
	* UserName: Stephane@PC-Aide-Lab.onmicrosoft.com 
    * PWD (min 8 char)
    * Group: StdUser
    * Role: User
    * Location: ca

* Authentication methods
	* Stephane\used MfA
    
## New Group
* Group type: Security | Microsoft 365
	* Security
* Name: StdUsers

## Assigned roles
* cutom role (create a new one)
	* To assign custom roles to a user, your organization needs Azure AD Premium P1 or P2.
* stephane\Global reader
