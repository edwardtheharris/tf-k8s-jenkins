output "eks_cluster_host" {
  value = aws_eks_cluster.jenkins.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.jenkins.certificate_authority[0].data
}