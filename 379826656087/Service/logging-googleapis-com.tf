resource "google_project_service" "logging_googleapis_com" {
  project = "379826656087"
  service = "logging.googleapis.com"
}
# terraform import google_project_service.logging_googleapis_com 379826656087/logging.googleapis.com
