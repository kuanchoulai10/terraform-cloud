resource "tfe_variable_set" "advertising_data_sink" {
  organization = data.tfe_organization.kcl.name
  name = "Advertising - Data Sink"
  description = "For accessing Google Cloud 'kcl-advertising-data-sink' object"  
}

moved {
  from = tfe_variable_set.kcl_advertising_data_pipeline_sink
  to = tfe_variable_set.advertising_data_sink
}

resource "tfe_variable_set" "advertising_data_dev" {
  organization = data.tfe_organization.kcl.name
  name = "Advertising - Data Pipeline (Development)"
  description = "For accessing Google Cloud 'kcl-advertising-data-dev' object"  
}

resource "tfe_variable_set" "advertising_data_prod" {
  organization = data.tfe_organization.kcl.name
  name = "Advertising - Data Pipeline (Production)"
  description = "For accessing Google Cloud 'kcl-advertising-data-prod' object"  
}

