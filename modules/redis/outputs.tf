output "redis_name" {
  description = "Redis instance name"
  value       = google_redis_instance.redis.name
}

output "host" {
  description = "Redis host"
  value       = google_redis_instance.redis.host
}

output "port" {
  description = "Redis port"
  value       = google_redis_instance.redis.port
}

output "current_location_id" {
  description = "Current zone of the Redis instance"
  value       = google_redis_instance.redis.current_location_id
}