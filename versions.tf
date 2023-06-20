terraform {
  cloud {
    organization = "kcl"
    workspaces {
      name = "terraform-cloud"
    }
  }

  required_providers {
    tfe = {
      version = "~> 0.40.0"
    }
  }
}
