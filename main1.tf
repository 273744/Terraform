provider "google" {
 project = var.project_id
}

variable "service_account_id" {
 type = string
}

resource "google_service_account" "default" {
 account_id = var.service_account_id
}

resource "google_service_account_key" "default" {
 account_id = google_service_account.default.account_id
 key_type = "JSON"
}
