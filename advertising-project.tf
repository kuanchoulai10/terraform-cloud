resource "tfe_project" "advertising" {
  organization = data.tfe_organization.kcl.name
  name = "Advertising"
}

resource "tfe_workspace_variable_set" "advertising_data_sink" {
  workspace_id = tfe_workspace.advertising_data_sink.id
  variable_set_id = tfe_variable_set.advertising_data_pipeline_sink.id
}

moved {
  from = tfe_workspace.advertising_data_pipeline_sink
  to = tfe_workspace.advertising_data_sink
}

resource "tfe_workspace" "advertising_data_sink" {
  organization        = data.tfe_organization.kcl.name
  name                = "data-sink"
  project_id          = tfe_project.advertising.id
  execution_mode      = "remote"
  auto_apply          = false
  terraform_version   = "~> 1.5.0"
  working_directory   = "advertising/infrastructure/data-sink"
  global_remote_state = false
  remote_state_consumer_ids = [
  ]
  structured_run_output_enabled = true
  tag_names = [
    "department:advertising"
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

resource "tfe_workspace_variable_set" "advertising_data_dev" {
  workspace_id = tfe_workspace.advertising_data_dev.id
  variable_set_id = tfe_variable_set.advertising_data_dev.id
}

resource "tfe_workspace" "advertising_data_dev" {
  organization        = data.tfe_organization.kcl.name
  name                = "data-dev"
  project_id          = tfe_project.advertising.id
  execution_mode      = "remote"
  auto_apply          = false
  terraform_version   = "~> 1.5.0"
  working_directory   = "advertising/infrastructure/data-dev"
  global_remote_state = false
  remote_state_consumer_ids = [
  ]
  structured_run_output_enabled = true
  tag_names = [
    "department:advertising"
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

resource "tfe_workspace_variable_set" "advertising_data_prod" {
  workspace_id = tfe_workspace.advertising_data_prod.id
  variable_set_id = tfe_variable_set.advertising_data_prod.id
}

resource "tfe_workspace" "advertising_data_prod" {
  organization        = data.tfe_organization.kcl.name
  name                = "data-prod"
  project_id          = tfe_project.advertising.id
  execution_mode      = "remote"
  auto_apply          = false
  terraform_version   = "~> 1.5.0"
  working_directory   = "advertising/infrastructure/data-prod"
  global_remote_state = false
  remote_state_consumer_ids = [
  ]
  structured_run_output_enabled = true
  tag_names = [
    "department:advertising"
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
