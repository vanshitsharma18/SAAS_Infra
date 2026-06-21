resource "google_artifact_registry_repository" "repository" {
  project       = var.project_id
  location      = var.region
  repository_id = var.repository_name

  description = "Docker repository for SaaS platform"

  format = "DOCKER"
}