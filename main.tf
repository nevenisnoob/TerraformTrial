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


# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_service_account
# 0. terraform用の service accountを作ります
resource "google_service_account" "workload_identity_federation" {
  project      = local.project_id
  account_id   = "workload-identity-test"
  display_name = "SA used by GitHub Actions with Workload Identity Federation"
  description  = "link to Workload Identity Pool used by GitHub Actions"
}

resource "google_project_iam_member" "workload_identity_federation_sa" {
  project = local.project_id
  role = "roles/iam.workloadIdentityPoolAdmin"
  member = "serviceAccount:${google_service_account.workload_identity_federation.email}"
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool
# 1. workload identity poolをまず作る必要があります
resource "google_iam_workload_identity_pool" "github_wif_pool" {
  provider                  = google-beta
  project                   = local.project_id
  workload_identity_pool_id = "github-actions"
  display_name              = "GitHub Actions Workload Identity Pool"
  description               = "Workload Identity Pool for GitHub Actions"
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider
# https://cloud.google.com/blog/products/identity-security/enabling-keyless-authentication-from-github-actions?hl=en
# 2. oned-way trust from external(GitHub) identity provider to Google's Workload Identity Pool
resource "google_iam_workload_identity_pool_provider" "github" {
  provider                           = google-beta
  project                            = local.project_id
  workload_identity_pool_id          = google_iam_workload_identity_pool.github_wif_pool.workload_identity_pool_id
  workload_identity_pool_provider_id = "github-actions-provider"
  display_name                       = "github actions provider"
  description                        = "OIDC identity pool provider for execute github actions"

  attribute_mapping = {
    "google.subject"       = "assertion.sub"
    "attribute.actor"      = "assertion.actor"
    "attribute.aud"        = "assertion.aud"
  }

  oidc {
    issuer_uri = "https://token.actions.githubusercontent.com"
  }
}

# https://registry.terraform.io/providers/hashicorp/google/4.48.0/docs/resources/google_service_account_iam
# https://github.com/terraform-google-modules/terraform-google-github-actions-runners/tree/master/modules/gh-oidc
# https://github.com/terraform-google-modules/terraform-google-github-actions-runners/tree/master/examples/oidc-simple
# 3.allow authentications from the Workload Identity Provider to impersonate the desired Service Account
resource "google_service_account_iam_member" "github-sa-wif-binding" {
  service_account_id = google_service_account.workload_identity_federation.name
  role               = "roles/iam.workloadIdentityUser"
  member             = "principalSet://iam.googleapis.com/${google_iam_workload_identity_pool.github_wif_pool.name}/attribute.repository/nevenisnoob/TerraformTrial"
}
