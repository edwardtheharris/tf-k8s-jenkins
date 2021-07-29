provider "google" {
  project      = var.project_id
  region       = var.region
  zone         = var.zone_id
}

terraform {
  backend "local" {
    path = "/tmp/terraform.tfstate"
  }
}