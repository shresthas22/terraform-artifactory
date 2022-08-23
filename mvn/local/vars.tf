variable "mvn_repo_name" {
  type        = string
  description = "Name of the mvn repo"
}

variable "checksum_policy_type" {
  type        = string
  description = "determines how Artifactory behaves when a client checksum for a deployed resource is missing or conflicts with the locally calculated checksum (bad checksum)"
  validation {
    condition = anytrue([
      var.checksum_policy_type == "client-checksums",
      var.checksum_policy_type == "server-generated-checksums"
    ])
    error_message = "Invalid checksum policy"
  }
  default = "client-checksums"
}

variable "snapshot_version_behavior" {
  type        = string
  description = "Specifies the naming convention for Maven SNAPSHOT versions."
  validation {
    condition = anytrue([
      var.snapshot_version_behavior == "unique",
      var.snapshot_version_behavior == "non-unique",
      var.snapshot_version_behavior == "deployer",
    ])
  }
  default = "unique"
}

variable "max_unique_snapshots" {
  type        = number
  description = "The maximum number of unique snapshots of a single artifact to store"
}

variable "handle_releases" {
  type        = bool
  description = "If set, Artifactory allows you to deploy release artifacts into this repository"
  default     = true
}


variable "handle_snapshots" {
  type        = bool
  description = "If set, Artifactory allows you to deploy snapshot artifacts into this repository"
  default     = true
}

variable "suppress_pom_consistency_checks" {
  type        = bool
  description = "By default, Artifactory keeps your repositories healthy by refusing POMs with incorrect coordinates (path)."
  default     = false
}

variable "artifactory_url" {
  type    = string
  default = "https://localhost:8082"
}

variable "artifactory_access_token" {
  type = string
}


