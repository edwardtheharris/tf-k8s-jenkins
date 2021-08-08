resource "aws_eks_cluster" "jenkins" {
  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.AmazonEKSVPCResourceController,
  ]
  
  name     = "jenkins"
  role_arn = aws_iam_role.eksClusterRole.arn

  vpc_config {
    subnet_ids = [
        data.aws_subnet.us-west-2a.id,
        data.aws_subnet.us-west-2b.id,
        data.aws_subnet.us-west-2c.id,
        data.aws_subnet.us-west-2d.id]
  }
}