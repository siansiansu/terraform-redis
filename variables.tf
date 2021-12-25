variable "project" {
  type        = string
  description = "project name"
  default     = ""
}

variable "region" {
  type        = string
  description = "region name"
  default     = "asia-east1"
}

variable "persistent_storage_encryption" {
  type        = bool
  description = "encryption"
  default     = false
}

variable "subscription_name" {
  type        = string
  description = "subscription name"
  default     = ""
}

variable "cloud_provider" {
  type        = string
  description = ""
  default     = "GCP"
}

variable "external_endpoint_for_oss_cluster_api" {
  type        = bool
  description = ""
  default     = false
}

variable "protocol" {
  type        = string
  description = ""
  default     = "redis"
}
