provider "google" {
  project = var.project_id
  region  = var.default_region
}

resource "google_artifact_registry_repository" "greeter-repo" {
  location      = var.default_region
  repository_id = "greeter-repo"
  description   = "Docker repo for greeter project"
  format        = "DOCKER"
}

resource "google_container_cluster" "greeter-cluster-1" {
  name                         = "greeter-cluster-1"
  location                     = "us-central1"
  initial_node_count           = 0
  enable_autopilot             = true
  in_transit_encryption_config = "IN_TRANSIT_ENCRYPTION_DISABLED"
}