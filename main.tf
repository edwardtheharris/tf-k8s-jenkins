provider "google" {
    project = "xander-the-harris-jenkins"
    region = "us-west-2"
    zone = "us-west-2a"
}

terraform {
    backend "gcs" {
        bucket  = "xander-the-harris-jenkins-terraform-state"
        prefix  = "terraform/state"
    }
}

