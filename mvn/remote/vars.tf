variable "mvn_repo_name" {
  type        = string
  description = "Name of the mvn repo"
}

variable "mvn_remote_url" {
  type        = string
  description = "The remote repo URL."
}

variable "fetch_jars_eagerly" {
  type        = bool
  description = "When set, if a POM is requested, Artifactory attempts to fetch the corresponding jar in the background."
  default     = false
}

variable "fetch_sources_eagerly" {
  type        = bool
  description = "When set, if a binaries jar is requested, Artifactory attempts to fetch the corresponding source jar in the background"
  default     = false
}

variable "suppress_pom_consistency_checks" {
  type        = bool
  description = "By default, the system keeps your repositories healthy by refusing POMs with incorrect coordinates."
  default     = true
}

variable "reject_invalid_jars" {
  type        = bool
  description = "Reject the caching of jar files that are found to be invalid."
  default     = false
}

variable "metadata_retrieval_timeout_seconds" {
  type        = number
  description = "refers to the number of seconds to cache metadata files before checking for newer versions"
  default     = 60
}

variable "artifactory_url" {
  type    = string
  default = "https://localhost:8082"
}

variable "artifactory_access_token" {
  type = string
}



