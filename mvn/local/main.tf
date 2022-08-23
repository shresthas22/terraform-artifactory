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

# Generic Local Maven Repository
resource "artifactory_local_maven_repository" "generic_local_mvn" {
  key                             = var.mvn_repo_name
  checksum_policy_type            = var.checksum_policy_type
  snapshot_version_behavior       = var.snapshot_version_behavior
  max_unique_snapshots            = var.max_unique_snapshots
  handle_releases                 = var.handle_releases
  handle_snapshots                = var.handle_snapshots
  suppress_pom_consistency_checks = var.suppress_pom_consistency_checks
}
