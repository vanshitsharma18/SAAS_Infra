resource "google_container_cluster" "gke" {
  name     = var.cluster_name
  location = var.region

  network    = var.network_name
  subnetwork = var.subnet_name

  deletion_protection = false

  remove_default_node_pool = true
  initial_node_count       = 1

  ip_allocation_policy {
    cluster_secondary_range_name  = var.pod_range_name
    services_secondary_range_name = var.service_range_name
  }
}