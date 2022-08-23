variable "artifactory_url" {
  type    = string
  default = "https://localhost:8082"
}

variable "artifactory_access_token" {
  type = string
}

variable "ivy_repo_name" {
  type        = string
  description = "Name of the repo"
}

variable "mvn_repo_name" {
  type        = string
  description = "Name of the mvn repo"
}

variable "mvn_remote_url" {
  type        = string
  description = "The remote repo URL."
}
