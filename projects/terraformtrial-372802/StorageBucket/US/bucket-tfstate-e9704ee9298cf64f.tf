resource "google_storage_bucket" "bucket_tfstate_e9704ee9298cf64f" {
  force_destroy            = false
  location                 = "US"
  name                     = "bucket-tfstate-e9704ee9298cf64f"
  project                  = "terraformtrial-372802"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"

  versioning {
    enabled = true
  }
}
# terraform import google_storage_bucket.bucket_tfstate_e9704ee9298cf64f bucket-tfstate-e9704ee9298cf64f
