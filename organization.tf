data "tfe_organization" "kcl" {
  name  = "kcl"
}

data "tfe_oauth_client" "main" {
  organization = "kcl"
  name = "GitHub.com"
}
