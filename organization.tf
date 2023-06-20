data "tfe_organization" "kcl" {
  name  = "kcl"
}

data "tfe_github_app_installation" "main" {
  installation_id = 26208461
}
