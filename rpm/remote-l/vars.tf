variable "artifactory_url" {
  type    = string
  default = "https://localhost:8082"
}

variable "artifactory_access_token" {
  type = string
}

variable "rpm_repo_name" {
  type    = string
  default = "name of the repo"
}
