resource "google_monitoring_notification_channel" "email" {
  project      = var.project_id
  display_name = var.notification_channel_name
  type         = "email"

  labels = {
    email_address = "vanshitsharma2006@gmail.com"
  }
}