resource "google_redis_instance" "redis" {
  project        = var.project_id
  name           = var.instance_name
  region         = var.region
  tier           = var.tier
  memory_size_gb = var.memory_size_gb

  redis_version = "REDIS_7_2"

  display_name = var.instance_name
}