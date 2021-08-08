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
}