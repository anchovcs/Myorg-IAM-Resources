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
<!-- Use this for applications requiring XML-based authentication.

```hcl
module "my_saml_app" {
  source  = "app.terraform.io/AnchoAutomatedSolutions/okta-App/okta"
  version = "1.0.0"

  app_type  = "saml"
  app_label = "Production-Reporting-SAML"
  sso_url   = "[https://apps.company.com/saml/sso](https://apps.company.com/saml/sso)"
  audience  = "[https://apps.company.com/saml/metadata](https://apps.company.com/saml/metadata)"
} -->

2. OIDC Application 

<!-- module "my_oidc_app" {
  source  = "app.terraform.io/AnchoAutomatedSolutions/okta-App/okta"
  version = "1.0.0"

  app_type      = "oidc"
  app_label     = "Marketing-Web-Dashboard"
  redirect_uris = ["[https://marketing.company.com/login/callback](https://marketing.company.com/login/callback)"]
} -->

2. If your project need both SAML and OIDC App

<!-- module "project_name_saml" {
  source    = "app.terraform.io/AnchoAutomatedSolutions/okta-App/okta"
  version   = "1.0.0"
  app_type  = "saml"
  app_label = "Project-X-Backend"
  sso_url   = "[https://x-api.company.com/sso](https://x-api.company.com/sso)"
  audience  = "project-x-sp"
}

module "project_name_oidc" {
  source    = "app.terraform.io/AnchoAutomatedSolutions/okta-App/okta"
  version   = "1.0.0"
  app_type  = "oidc"
  app_label = "Project-X-Frontend"
  redirect_uris = ["[https://x.company.com/callback](https://x.company.com/callback)"]
} -->