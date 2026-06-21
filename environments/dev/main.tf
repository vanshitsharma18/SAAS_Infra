provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source = "../../modules/vpc"

  project_id = var.project_id
  region     = var.region

  vpc_name    = "global-saas-dev-vpc"
  subnet_name = "global-saas-dev-subnet"
}

module "artifact_registry" {
  source = "../../modules/artifact-registry"

  project_id      = var.project_id
  region          = var.region
  repository_name = "global-saas-dev-repo"
}