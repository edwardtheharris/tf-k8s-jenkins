# Retrieve an access token as the Terraform runner
data "google_client_config" "provider" {}

data "google_container_cluster" "my_cluster" {
  name     = google_container_cluster.jenkins.name
  location = var.region
}

provider "kubernetes" {
  host  = "https://${data.google_container_cluster.my_cluster.endpoint}"
  token = data.google_client_config.provider.access_token
  cluster_ca_certificate = base64decode(
    data.google_container_cluster.my_cluster.master_auth[0].cluster_ca_certificate,
  )
}

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