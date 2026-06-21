resource "google_service_account" "sa" {
  project      = var.project_id
  account_id   = var.service_account_id
  display_name = var.service_account_name
}

resource "google_project_iam_member" "artifact_registry_writer" {
  count = var.artifact_registry_writer_role ? 1 : 0

  project = var.project_id
  role    = "roles/artifactregistry.writer"

  member = "serviceAccount:${google_service_account.sa.email}"
}