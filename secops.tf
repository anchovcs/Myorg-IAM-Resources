module "project_name_oidc" {
  source    = "app.terraform.io/AnchoAutomatedSolutions/okta-App/okta"
  version   = "1.0.1"
  app_type  = "oidc"
  app_label = "Project-new-Frontend"
  redirect_uris = ["[https://x.company.com/callback](https://x.company.com/callback)"]
}