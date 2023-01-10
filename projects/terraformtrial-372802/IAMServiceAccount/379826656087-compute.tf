resource "google_service_account" "379826656087_compute" {
  account_id   = "379826656087-compute"
  display_name = "Compute Engine default service account"
  project      = "terraformtrial-372802"
}
# terraform import google_service_account.379826656087_compute projects/terraformtrial-372802/serviceAccounts/379826656087-compute@terraformtrial-372802.iam.gserviceaccount.com
