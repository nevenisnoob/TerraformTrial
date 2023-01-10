resource "google_project_service" "monitoring_googleapis_com" {
  project = "379826656087"
  service = "monitoring.googleapis.com"
}
# terraform import google_project_service.monitoring_googleapis_com 379826656087/monitoring.googleapis.com
