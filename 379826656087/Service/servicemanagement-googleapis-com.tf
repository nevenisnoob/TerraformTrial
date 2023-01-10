resource "google_project_service" "servicemanagement_googleapis_com" {
  project = "379826656087"
  service = "servicemanagement.googleapis.com"
}
# terraform import google_project_service.servicemanagement_googleapis_com 379826656087/servicemanagement.googleapis.com
