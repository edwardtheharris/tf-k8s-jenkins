provider "google" {
  access_token = var.access_token
  project      = "xander-the-harris-jenkins"
  region       = "us-west-2"
  zone         = "us-west-2a"
}

terraform {
  backend "remote" {
    organization = "brick-house"

    workspaces {
      name = "brick-house-github"
    }
  }
}