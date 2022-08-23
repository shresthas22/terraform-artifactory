variable "ivy_repo_name" {
  type        = string
  description = "Name of the repo"
}

variable "artifactory_url" {
  type    = string
  default = "https://localhost:8082"
}

variable "artifactory_access_token" {
  type = string
}
