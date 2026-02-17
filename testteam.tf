
data "okta_group" "existing_app_group" {
  name = "Everyone"
}

module "portal_saml_app1" {
  source    = "app.terraform.io/AnchoAutomatedSolutions/okta-App/okta"
  version   = "1.0.8" 

  app_type  = "saml"
  app_label = "Test1-App-SAML"

  
  sso_url   = "https://portal1.company.com/saml/acs"
  audience  = "https://portal.company.com/metadata"


  group_ids = [data.okta_group.existing_app_group.id]

}


output "portal_metadata_url" {
  value = module.portal_saml_app.saml_metadata_url
}