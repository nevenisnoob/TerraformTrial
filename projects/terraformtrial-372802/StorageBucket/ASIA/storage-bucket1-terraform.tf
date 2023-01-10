resource "google_storage_bucket" "storage_bucket1_terraform" {
  force_destroy               = false
  location                    = "ASIA"
  name                        = "storage-bucket1-terraform"
  project                     = "terraformtrial-372802"
  public_access_prevention    = "enforced"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
}
# terraform import google_storage_bucket.storage_bucket1_terraform storage-bucket1-terraform
