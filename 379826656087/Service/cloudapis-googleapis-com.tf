resource "google_project_service" "cloudapis_googleapis_com" {
  project = "379826656087"
  service = "cloudapis.googleapis.com"
}
# terraform import google_project_service.cloudapis_googleapis_com 379826656087/cloudapis.googleapis.com
