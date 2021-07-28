provider "google" {
  access_token = var.access_token
  project      = var.project_id
  region       = var.region
  zone         = var.zone_id
}

terraform {
  backend "remote" {
    organization = "brick-house"

    workspaces {
      name = "brick-house-github"
    }
  }
}