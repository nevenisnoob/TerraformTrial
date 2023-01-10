resource "google_project_service" "sql_component_googleapis_com" {
  project = "379826656087"
  service = "sql-component.googleapis.com"
}
# terraform import google_project_service.sql_component_googleapis_com 379826656087/sql-component.googleapis.com
