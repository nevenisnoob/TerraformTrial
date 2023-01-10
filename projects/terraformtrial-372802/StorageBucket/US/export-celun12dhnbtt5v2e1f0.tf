resource "google_storage_bucket" "export_celun12dhnbtt5v2e1f0" {
  force_destroy            = false
  location                 = "US"
  name                     = "export-celun12dhnbtt5v2e1f0"
  project                  = "terraformtrial-372802"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.export_celun12dhnbtt5v2e1f0 export-celun12dhnbtt5v2e1f0
