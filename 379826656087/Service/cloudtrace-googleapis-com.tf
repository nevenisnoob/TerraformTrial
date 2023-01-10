resource "google_project_service" "cloudtrace_googleapis_com" {
  project = "379826656087"
  service = "cloudtrace.googleapis.com"
}
# terraform import google_project_service.cloudtrace_googleapis_com 379826656087/cloudtrace.googleapis.com
