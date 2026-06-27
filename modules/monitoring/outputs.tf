output "notification_channel_id" {
  description = "Notification Channel ID"
  value       = google_monitoring_notification_channel.email.id
}

output "notification_channel_name" {
  description = "Notification Channel Name"
  value       = google_monitoring_notification_channel.email.name
}