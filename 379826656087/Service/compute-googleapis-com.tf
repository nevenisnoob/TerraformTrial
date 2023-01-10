resource "google_project_service" "compute_googleapis_com" {
  project = "379826656087"
  service = "compute.googleapis.com"
}
# terraform import google_project_service.compute_googleapis_com 379826656087/compute.googleapis.com
