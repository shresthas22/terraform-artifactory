variable "npm_repo_name" {
  type        = string
  description = "Name of the repo"
}

variable "npm_remote_url" {
  type        = string
  description = "Remote URL"
}

variable "list_remote_folder_items" {
  type    = bool
  default = true
}

variable "mismatching_mime_types_override_list" {
  type = string
}

variable "artifactory_url" {
  type    = string
  default = "https://localhost:8082"
}

variable "artifactory_access_token" {
  type = string
}
