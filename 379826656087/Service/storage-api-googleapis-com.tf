resource "google_project_service" "storage_api_googleapis_com" {
  project = "379826656087"
  service = "storage-api.googleapis.com"
}
# terraform import google_project_service.storage_api_googleapis_com 379826656087/storage-api.googleapis.com
