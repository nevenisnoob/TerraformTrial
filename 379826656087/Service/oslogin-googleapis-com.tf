resource "google_project_service" "oslogin_googleapis_com" {
  project = "379826656087"
  service = "oslogin.googleapis.com"
}
# terraform import google_project_service.oslogin_googleapis_com 379826656087/oslogin.googleapis.com
