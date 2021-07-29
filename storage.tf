resource "google_storage_bucket" "tfstate" {
  name = "xander-the-harris-jenkins-terraform-state"
  force_destroy = true
}