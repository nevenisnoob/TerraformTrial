terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0" # OIDC https://github.com/hashicorp/terraform-provider-google/releases/tag/v3.61.0 or later
    }
  }


  backend "gcs" {
    bucket = "storage-bucket1-terraform"
    prefix = "state" # any prefix is ok.
  }
}

resource "google_project_iam_member" "terraform_trial_iam_sa" {
   role    = "roles/owner"
   member  = "serviceAccount:${google_service_account.terraform.email}"
 }

resource "google_service_account" "terraform_trial_sa" {
  account_id    =    "test01"
}
