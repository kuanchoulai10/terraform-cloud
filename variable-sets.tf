resource "tfe_variable_set" "terraform_cloud" {
  organization = data.tfe_organization.kcl.name
  name         = "Terraform Cloud"
  description  = "For accessing Terraform Cloud."
}

resource "tfe_variable_set" "kcl_advertising_data_pipeline_sink" {
  organization = data.tfe_organization.kcl.name
  name = "Advertising Data Pipeline Sink"
  description = "For accessing Google Cloud 'kcl-ad-data-pipeline-sink' object"  
}
