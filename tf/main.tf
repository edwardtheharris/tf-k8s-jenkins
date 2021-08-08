terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "brick-house"

    workspaces {
      name = "jenkins-terraform-k8s"
    }
  }
}

module "gcp" {
  source = "./gcp"
  region = var.gcp_region
  zone_id = var.gcp_zone_id
}