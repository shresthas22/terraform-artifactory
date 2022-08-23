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

resource "artifactory_remote_rpm_repository" "generic_remote_rpm" {
  key = var.rpm_repo_name
  url = var.rpm_remote_url
}
