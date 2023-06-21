resource "tfe_project" "video" {
  organization = data.tfe_organization.kcl.name
  name = "Video"
}

resource "tfe_workspace_variable_set" "video_data_sink" {
  workspace_id = tfe_workspace.video_data_sink.id
  variable_set_id = tfe_variable_set.video_data_sink.id
}

resource "tfe_workspace" "video_data_sink" {
  organization        = data.tfe_organization.kcl.name
  name                = "video-data-sink"
  project_id          = tfe_project.video.id
  execution_mode      = "remote"
  auto_apply          = false
  terraform_version   = "~> 1.5.0"
  working_directory   = "video/infrastructure/data-sink"
  global_remote_state = false
  remote_state_consumer_ids = [
  ]
  structured_run_output_enabled = true
  tag_names = [
    "department:video"
  ]

  speculative_enabled = true
  vcs_repo {
    identifier         = "kuanchoulai10/data-mesh"
    branch             = "main"
    ingress_submodules = false
    oauth_token_id     = data.tfe_oauth_client.main.oauth_token_id
  }
  queue_all_runs      = false
  assessments_enabled = false
  allow_destroy_plan  = false
}

resource "tfe_workspace_variable_set" "video_data_dev" {
  workspace_id = tfe_workspace.video_data_dev.id
  variable_set_id = tfe_variable_set.video_data_dev.id
}

resource "tfe_workspace" "video_data_dev" {
  organization        = data.tfe_organization.kcl.name
  name                = "video-data-dev"
  project_id          = tfe_project.video.id
  execution_mode      = "remote"
  auto_apply          = false
  terraform_version   = "~> 1.5.0"
  working_directory   = "video/infrastructure/data-dev"
  global_remote_state = false
  remote_state_consumer_ids = [
  ]
  structured_run_output_enabled = true
  tag_names = [
    "department:video"
  ]

  speculative_enabled = true
  vcs_repo {
    identifier         = "kuanchoulai10/data-mesh"
    branch             = "main"
    ingress_submodules = false
    oauth_token_id     = data.tfe_oauth_client.main.oauth_token_id
  }
  queue_all_runs      = false
  assessments_enabled = false
  allow_destroy_plan  = false
}

resource "tfe_workspace_variable_set" "video_data_prod" {
  workspace_id = tfe_workspace.video_data_prod.id
  variable_set_id = tfe_variable_set.video_data_prod.id
}

resource "tfe_workspace" "video_data_prod" {
  organization        = data.tfe_organization.kcl.name
  name                = "video-data-prod"
  project_id          = tfe_project.video.id
  execution_mode      = "remote"
  auto_apply          = false
  terraform_version   = "~> 1.5.0"
  working_directory   = "video/infrastructure/data-prod"
  global_remote_state = false
  remote_state_consumer_ids = [
  ]
  structured_run_output_enabled = true
  tag_names = [
    "department:video"
  ]

  speculative_enabled = true
  vcs_repo {
    identifier         = "kuanchoulai10/data-mesh"
    branch             = "main"
    ingress_submodules = false
    oauth_token_id     = data.tfe_oauth_client.main.oauth_token_id
  }
  queue_all_runs      = false
  assessments_enabled = false
  allow_destroy_plan  = false
}
