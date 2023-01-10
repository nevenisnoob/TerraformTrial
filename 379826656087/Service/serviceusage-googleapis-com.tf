resource "google_project_service" "serviceusage_googleapis_com" {
  project = "379826656087"
  service = "serviceusage.googleapis.com"
}
# terraform import google_project_service.serviceusage_googleapis_com 379826656087/serviceusage.googleapis.com
