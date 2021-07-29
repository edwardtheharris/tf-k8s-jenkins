provider "google" {
  access_token = var.access_token
  project      = var.project_id
  region       = var.region
  zone         = var.zone_id
}

terraform {
  backend "gcs" {
    bucket  = "xander-the-harris-jenkins-terraform-state"
    prefix  = "terraform/state"
  }
}