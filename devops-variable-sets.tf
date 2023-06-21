resource "tfe_variable_set" "terraform_cloud" {
  organization = data.tfe_organization.kcl.name
  name         = "Terraform Cloud"
  description  = "For accessing Terraform Cloud."
}
