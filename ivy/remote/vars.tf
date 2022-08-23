variable "ivy_repo_name" {
  type        = string
  description = "Name of the repo"
}

variable "ivy_remote_url" {
  type        = string
  description = "The remote repo URL."
}

variable "fetch_jars_eagerly" {
  type        = bool
  default     = true
  description = "This will accelerate first access time to the jar when it is subsequently requested."
}

variable "fetch_sources_eagerly" {
  type        = bool
  default     = false
  description = "This will accelerate first access time to the source jar when it is subsequently requested."
}

variable "suppress_pom_consistency_checks" {
  type    = bool
  default = true
}

variable "reject_invalid_jars" {
  type    = bool
  default = true
}



