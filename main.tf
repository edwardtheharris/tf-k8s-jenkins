# Retrieve an access token as the Terraform runner
data "google_client_config" "provider" {}

data "google_container_cluster" "jenkins" {
  name     = google_container_cluster.jenkins.name
  location = var.region
}

provider "kubernetes" {
  host  = "https://${data.google_container_cluster.jenkins.endpoint}"
  token = data.google_client_config.provider.access_token
  cluster_ca_certificate = base64decode(
    data.google_container_cluster.jenkins.master_auth[0].cluster_ca_certificate,
  )
}

provider "google" {
  access_token = var.access_token
  project      = var.project_id
  region       = var.region
  zone         = var.zone_id
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "brick-house"

    workspaces {
      name = "jenkins-terraform-gcp"
    }
  }
}