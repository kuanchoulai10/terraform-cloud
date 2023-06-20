resource "tfe_project" "advertising" {
  organization = data.tfe_organization.kcl.name
  name = "Advertising"
}

resource "tfe_workspace" "advertising_data_pipeline" {
  organization        = tfe_organization.kcl.name
  name                = "Advertising Data Pipeline"
  project_id          = tfe_project.advertising.id
  execution_mode      = "remote"
  auto_apply          = false
  terraform_version   = "~> 1.5.0"
  working_directory   = "advertising/infrastructure/"
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
    oauth_token_id     = data.tfe_github_app_installation.main.id
  }

  # Other settings
  queue_all_runs      = false
  assessments_enabled = false
  allow_destroy_plan  = false
}
