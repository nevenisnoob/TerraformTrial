resource "google_project_service" "datastore_googleapis_com" {
  project = "379826656087"
  service = "datastore.googleapis.com"
}
# terraform import google_project_service.datastore_googleapis_com 379826656087/datastore.googleapis.com
