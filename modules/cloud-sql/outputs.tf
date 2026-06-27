output "instance_name" {
  description = "Cloud SQL instance name"
  value       = google_sql_database_instance.postgres.name
}

output "connection_name" {
  description = "Cloud SQL connection name"
  value       = google_sql_database_instance.postgres.connection_name
}

output "private_ip_address" {
  description = "Private IP address of the instance"
  value       = google_sql_database_instance.postgres.private_ip_address
}

output "public_ip_address" {
  description = "Public IP address of the instance"
  value       = google_sql_database_instance.postgres.public_ip_address
}