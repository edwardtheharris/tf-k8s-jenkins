variable "aws_access_key" {
  description = "AWS access key id."
}

variable "aws_region" {
  description = "Region in which to deploy to AWS."
}

variable "aws_secret_key" {
  description = "AWS secret access key."
}

variable "gcp_access_token" {
  description = "Access token with which to access GCP."
}

variable "gcp_project_id" {
  description = "Project ID to deploy the cluster to."
}

variable "gcp_region" {
  description = "Active region for deployment."
}

variable "gcp_zone_id" {
  description = "Availability zone for deployment."
}