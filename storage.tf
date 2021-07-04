resource "google_storage_bucket" "tfstate" {
    name = "jenkins-terraform-state"
}