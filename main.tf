terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0" # OIDC https://github.com/hashicorp/terraform-provider-google/releases/tag/v3.61.0 or later
    }
  }

  backend "gcs" {
    bucket = "terraform_trial"
    prefix = "state" # any prefix is ok.
  }
}
