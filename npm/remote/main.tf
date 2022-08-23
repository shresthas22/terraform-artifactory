terraform {
  required_providers {
    artifactory = {
      source  = "registry.terraform.io/jfrog/artifactory"
      version = "6.12.0"
    }
  }
}

# Configure the Artifactory provider
provider "artifactory" {
  url           = "${var.artifactory_url}/artifactory"
  access_token  = var.artifactory_access_token
  check_license = false
}

# Generic remote npm repository
resource "artifactory_remote_npm_repository" "generic_remote_npm" {
  key                                  = var.npm_repo_name
  url                                  = var.npm_remote_url
  list_remote_folder_items             = var.list_remote_folder_items
  mismatching_mime_types_override_list = var.mismatching_mime_types_override_list
}
