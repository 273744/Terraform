resource "google_service_account" "my_service_account" {
  account_id   = "my-service-account"
  display_name = "My Service Account"
}

resource "google_service_account_key" "my_service_account_key" {
  service_account_id = google_service_account.my_service_account.name
}

output "key_secret" {
  value = google_service_account_key.my_service_account_key.private_key
}
