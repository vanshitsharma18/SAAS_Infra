terraform {
  backend "gcs" {
    bucket = "global-saas-tf-state"
    prefix = "dev"
  }
}