resource "google_project_service" "cloudasset_googleapis_com" {
  project = "379826656087"
  service = "cloudasset.googleapis.com"
}
# terraform import google_project_service.cloudasset_googleapis_com 379826656087/cloudasset.googleapis.com
