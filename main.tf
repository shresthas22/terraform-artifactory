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

module "local_ivy" {
  source                   = "../terraform-artifactory/ivy/local"
  ivy_repo_name            = var.ivy_repo_name
  artifactory_access_token = var.artifactory_access_token
  artifactory_url          = var.artifactory_url
}

module "remote_mvn" {
  source                   = "../terraform-artifactory/mvn/remote"
  artifactory_access_token = var.artifactory_access_token
  artifactory_url          = var.artifactory_url
  mvn_repo_name            = var.mvn_repo_name
  mvn_remote_url           = var.mvn_remote_url
}
