resource "tfe_variable_set" "video_data_sink" {
  organization = data.tfe_organization.kcl.name
  name = "Video - Data Sink"
  description = "For accessing Google Cloud 'kcl-video-data-sink' object"  
}

resource "tfe_variable_set" "video_data_dev" {
  organization = data.tfe_organization.kcl.name
  name = "Video - Data Pipeline (Development)"
  description = "For accessing Google Cloud 'kcl-video-data-dev' object"  
}

resource "tfe_variable_set" "video_data_prod" {
  organization = data.tfe_organization.kcl.name
  name = "Video - Data Pipeline (Production)"
  description = "For accessing Google Cloud 'kcl-video-data-prod' object"  
}
