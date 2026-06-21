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

module "secret_manager" {
  source = "../../modules/secret-manager"

  project_id = var.project_id
  secret_id  = "global-saas-dev-app-secret"
}

module "iam" {
  source = "../../modules/iam"

  project_id          = var.project_id
  service_account_id  = "global-saas-dev-sa"
  service_account_name = "Global SaaS Dev Service Account"
}