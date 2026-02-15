

variable "okta_org_name" {
  type        = string
  description = "The subdomain of your Okta URL."
}

variable "okta_base_url" {
  type        = string
  description = "The domain (e.g., okta.com)."
}

variable "okta_api_token" {
  type        = string
  description = "Okta API Token."
  sensitive   = true # This prevents the token from leaking in TFC logs
}