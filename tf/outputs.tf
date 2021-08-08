output "gcp_region" {
  value       = var.gcp_region
  description = "GCloud Region"
}

output "gcp_project_id" {
  value       = var.gcp_project_id
  description = "GCloud Project ID"
}

output "gke_cluster_name" {
  value       = module.gcp.gke_cluster_name
  description = "GKE Cluster Name"
}

output "gke_cluster_host" {
  value       = module.gcp.gke_cluster_host
  description = "GKE Cluster Host"
}