variable "gcp_credentials_file" {
  description = "Path to the GCP credentials JSON file."
}

variable "gcp_project_id" {
  description = "Google Cloud Project ID."
}

variable "gcp_region" {
  description = "GCP region to use for resources."
  default     = "us-central1"
}

variable "service_account_name" {
  description = "Name of the service account to create."
}

variable "service_account_display_name" {
  description = "Display name of the service account."
}
