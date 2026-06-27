variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "Region for Redis instance"
  type        = string
}

variable "instance_name" {
  description = "Redis instance name"
  type        = string
}

variable "memory_size_gb" {
  description = "Redis memory size in GB"
  type        = number
}

variable "tier" {
  description = "Redis tier"
  type        = string
  default     = "BASIC"
}