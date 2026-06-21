variable "project_id" {
  type = string
}

variable "service_account_id" {
  type = string
}

variable "service_account_name" {
  type = string
}

variable "artifact_registry_writer_role" {
  type    = bool
  default = true
}