terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "brick-house"

    workspaces {
      name = "jenkins-terraform-k8s"
    }
  }
}

# module "aws" {
#   access_key = var.aws_access_key
#   region     = var.aws_region
#   secret_key = var.aws_secret_key
#   source     = "./aws"
# }

module "gcp" {
  access_token = var.gcp_access_token
  project_id   = var.gcp_project_id
  region       = var.gcp_region
  source       = "./gcp"
  zone_id      = var.gcp_zone_id
}