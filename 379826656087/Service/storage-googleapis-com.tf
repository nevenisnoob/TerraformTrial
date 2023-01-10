resource "google_project_service" "storage_googleapis_com" {
  project = "379826656087"
  service = "storage.googleapis.com"
}
# terraform import google_project_service.storage_googleapis_com 379826656087/storage.googleapis.com
