variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "Region for Cloud SQL"
  type        = string
}

variable "instance_name" {
  description = "Cloud SQL instance name"
  type        = string
}

variable "database_version" {
  description = "Database engine version"
  type        = string
  default     = "POSTGRES_16"
}

variable "tier" {
  description = "Machine tier"
  type        = string
}

variable "disk_size" {
  description = "Disk size in GB"
  type        = number
}

variable "availability_type" {
  description = "ZONAL or REGIONAL"
  type        = string
}

variable "deletion_protection" {
  description = "Enable deletion protection"
  type        = bool
  default     = false
}