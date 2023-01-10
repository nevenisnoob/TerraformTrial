resource "google_project_service" "bigquery_googleapis_com" {
  project = "379826656087"
  service = "bigquery.googleapis.com"
}
# terraform import google_project_service.bigquery_googleapis_com 379826656087/bigquery.googleapis.com
