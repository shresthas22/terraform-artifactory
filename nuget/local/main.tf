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

# Generic local nuget repository
resource "artifactory_local_nuget_repository" "generic_local_nuget" {
  key                        = var.nuget_repo_name
  max_unique_snapshots       = var.max_unique_snapshots
  force_nuget_authentication = var.force_nuget_authentication
}
