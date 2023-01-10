resource "google_storage_bucket" "export_celumnqdhnbtsrk2sar0" {
  force_destroy            = false
  location                 = "US"
  name                     = "export-celumnqdhnbtsrk2sar0"
  project                  = "terraformtrial-372802"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.export_celumnqdhnbtsrk2sar0 export-celumnqdhnbtsrk2sar0
