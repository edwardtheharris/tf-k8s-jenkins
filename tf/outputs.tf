output "gcp_region" {
  value       = var.gcp_region
  description = "GCloud Region"
}

output "gcp_project_id" {
  value       = var.gcp_project_id
  description = "GCloud Project ID"
}

output "gke_cluster_name" {
  value       = gcp.google_container_cluster.jenkins.name
  description = "GKE Cluster Name"
}

output "gke_cluster_host" {
  value       = gcp.google_container_cluster.jenkins.endpoint
  description = "GKE Cluster Host"
}