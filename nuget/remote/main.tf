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

# Generic remote nuget repository
resource "artifactory_remote_nuget_repository" "generic_remote_nuget" {
  key                        = var.nuget_repo_name
  url                        = var.nuget_remote_url
  download_context_path      = var.download_context_path
  force_nuget_authentication = var.force_nuget_authentication
  v3_feed_url                = var.v3_feed_url
}
