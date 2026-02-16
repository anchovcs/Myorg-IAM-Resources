module "project_dws_oidc" {
  source    = "app.terraform.io/AnchoAutomatedSolutions/okta-App/okta"
  version   = "1.0.2"
  app_type  = "oidc"
  app_label = "DWS-oidc-app"
  
  # List of multiple URIs (e.g., Production and Staging)
  redirect_uris = [
    "https://dws.company.com/callback",
    "https://dws-staging.company.com/callback"
  ]
  scopes = [
    "openid",
    "profile",
    "email",
    "okta.users.manage",
    "okta.groups.manage"
  ]
}