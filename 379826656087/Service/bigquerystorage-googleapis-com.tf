resource "google_project_service" "bigquerystorage_googleapis_com" {
  project = "379826656087"
  service = "bigquerystorage.googleapis.com"
}
# terraform import google_project_service.bigquerystorage_googleapis_com 379826656087/bigquerystorage.googleapis.com
