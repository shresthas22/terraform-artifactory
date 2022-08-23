variable "artifactory_url" {
  type    = string
  default = "https://localhost:8082"
}

variable "artifactory_access_token" {
  type = string
}

variable "nuget_repo_name" {
  type        = string
  description = "Name of the repo"
}

variable "max_unique_snapshots" {
  type        = number
  description = "maximum number of unique snapshots of a single artifact"
  default     = 0
}

variable "force_nuget_authentication" {
  type        = bool
  description = "Force basic authentication credentials in order to use this repository"
  default     = true
}
