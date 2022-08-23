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

# Generic Remote Maven Repository
resource "artifactory_remote_maven_repository" "generic_remote_mvn" {
  key                                = var.mvn_repo_name
  url                                = var.mvn_remote_url
  fetch_jars_eagerly                 = var.fetch_jars_eagerly
  fetch_sources_eagerly              = var.fetch_sources_eagerly
  suppress_pom_consistency_checks    = var.suppress_pom_consistency_checks
  reject_invalid_jars                = var.reject_invalid_jars
  metadata_retrieval_timeout_seconds = var.metadata_retrieval_timeout_seconds
}
