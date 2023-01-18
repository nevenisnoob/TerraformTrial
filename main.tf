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
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project_service

module "gh_oidc" {
  source      = "terraform-google-modules/github-actions-runners/google//modules/gh-oidc"
  project_id  = local.project_id
  pool_id     = "example-pool"
  provider_id = "example-gh-provider"
  sa_mapping = {
    "foo-service-account" = {
      sa_name   = "projects/my-project/serviceAccounts/key-rotation-test@${local.project_id}.iam.gserviceaccount.com"
      attribute = "attribute.repository/nevenisnoob/TerraformTrial"
    }
  }
}
