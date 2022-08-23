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

variable "nuget_remote_url" {
  type        = string
  description = "Remote repo URL"
}

variable "download_context_path" {
  type        = string
  description = "The context path prefix through which NuGet downloads are served."
  default     = "api/v2/package"
}

variable "force_nuget_authentication" {
  type        = bool
  description = "Force basic authentication credentials in order to use this repository"
  default     = true
}

variable "v3_feed_url" {
  type        = string
  description = "The URL to the NuGet v3 feed"
  default     = "https://api.nuget.org/v3/index.json"
}
