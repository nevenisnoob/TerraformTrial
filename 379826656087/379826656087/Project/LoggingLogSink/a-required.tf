resource "google_logging_log_sink" "a_required" {
  destination            = "logging.googleapis.com/projects/terraformtrial-372802/locations/global/buckets/_Required"
  filter                 = "LOG_ID(\"cloudaudit.googleapis.com/activity\") OR LOG_ID(\"externalaudit.googleapis.com/activity\") OR LOG_ID(\"cloudaudit.googleapis.com/system_event\") OR LOG_ID(\"externalaudit.googleapis.com/system_event\") OR LOG_ID(\"cloudaudit.googleapis.com/access_transparency\") OR LOG_ID(\"externalaudit.googleapis.com/access_transparency\")"
  name                   = "_Required"
  project                = "379826656087"
  unique_writer_identity = true
}
# terraform import google_logging_log_sink.a_required 379826656087###_Required
