# Myorg-IAM-Resources
This repo will contain all my IAM resource managed through terraform

# Welcome to the IAM Self-Service Repo

To add a new application, create a new `.tf` file using IAM Module and rasie a PR against this Repo. Some example usage are shown below.

### Documentation & Full Examples
For a full list of inputs and interactive examples, visit our private registry:
https://app.terraform.io/app/AnchoAutomatedSolutions/registry/modules/private/AnchoAutomatedSolutions/okta-App/okta/1.0.0

### Quick Start Example

Usage Examples

1. Saml App standard
<!-- Example 1. Use this for applications requiring XML-based authentication.

```hcl
module "my_saml_app" {
  source  = "app.terraform.io/AnchoAutomatedSolutions/okta-App/okta"
  version = "1.0.0"

  app_type  = "saml"
  app_label = "Production-Reporting-SAML"
  sso_url   = ["https://x-api.company.com/sso","https://x-api.company.com/sso"]
  audience  = [https://apps.company.com/saml/metadata","https://apps.company.com/saml/metadata"]
} 

Example 2. Use this to example if a group is needed to be assigned to the SAML App

data "okta_group" "existing_app_group" {
  name = "Everyone"
}

module "portal_saml_app" {
  source    = "app.terraform.io/AnchoAutomatedSolutions/okta-App/okta"
  version   = "1.0.8" 

  app_type  = "saml"
  app_label = "Test-App-SAML"

  
  sso_url   = "https://portal.company.com/saml/acs"
  audience  = "https://portal.company.com/metadata"


  group_ids = [data.okta_group.existing_app_group.id]

}


output "portal_metadata_url" {
  value = module.portal_saml_app.saml_metadata_url
}
-->

2. OIDC Application 

<!-- module "my_oidc_app" {
  source  = "app.terraform.io/AnchoAutomatedSolutions/okta-App/okta"
  version = "1.0.0"

  app_type      = "oidc"
  app_label     = "Marketing-Web-Dashboard"
  redirect_uris = ["https://x-api.company.com/sso","https://x-api.company.com/sso"]

    scopes = [
    "okta.users.manage",
    "okta.groups.manage"
  ]
} -->

2. If your project need both SAML and OIDC App

<!-- module "project_name_saml" {
  source    = "app.terraform.io/AnchoAutomatedSolutions/okta-App/okta"
  version   = "1.0.0"
  app_type  = "saml"
  app_label = "Project-X-Backend"
  sso_url   = ["https://x-api.company.com/sso","https://x-api.company.com/sso"]
  audience  = "project-x-sp"
}

module "project_name_oidc" {
  source    = "app.terraform.io/AnchoAutomatedSolutions/okta-App/okta"
  version   = "1.0.0"
  app_type  = "oidc"
  app_label = "Project-X-Frontend"
  redirect_uris = ["https://x-api.company.com/sso","https://x-api.company.com/sso"]
} -->