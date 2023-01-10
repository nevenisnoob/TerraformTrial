resource "google_service_account" "key_rotation_test" {
  account_id   = "key-rotation-test"
  description  = "This Service Account is used to test the key rotation by terraform"
  display_name = "Key Rotation Trial"
  project      = "terraformtrial-372802"
}
# terraform import google_service_account.key_rotation_test projects/terraformtrial-372802/serviceAccounts/key-rotation-test@terraformtrial-372802.iam.gserviceaccount.com
