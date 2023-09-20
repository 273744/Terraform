provider "google" {
  credentials = file(var.gcp_credentials_file)
  project     = var.gcp_project_id
  region      = var.gcp_region
}

resource "google_service_account" "my_service_account" {
  account_id   = var.service_account_name
  display_name = var.service_account_display_name
}

resource "google_service_account_key" "my_service_account_key" {
  service_account_id = google_service_account.my_service_account.name
}

output "key_secret" {
  value = google_service_account_key.my_service_account_key.private_key
}
