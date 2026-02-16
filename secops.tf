module "project_name_oidc" {
  source    = "app.terraform.io/AnchoAutomatedSolutions/okta-App/okta"
  version   = "1.0.1"
  app_type  = "oidc"
  app_label = "Secops-oidc-app"
  
  # List of multiple URIs (e.g., Production and Staging)
  redirect_uris = [
    "https://x.company.com/callback",
    "https://x-staging.company.com/callback"
  ]
}