data "aws_iam_policy_document" "eks-cluster-assume-role" {
    statement {
        actions = [
            "sts:AssumeRole"
        ]
        principals {
            type = "Service"
            identifiers = [
                "eks.amazonaws.com"
            ]
        }
    }
}

resource "aws_iam_role" "eksClusterRole" {
  name = "eksClusterRole"
  assume_role_policy = data.aws_iam_policy_document.eks-cluster-assume-role.json
}

resource "aws_iam_role_policy_attachment" "AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.eksClusterRole.name
}

# Optionally, enable Security Groups for Pods
# Reference: https://docs.aws.amazon.com/eks/latest/userguide/security-groups-for-pods.html
resource "aws_iam_role_policy_attachment" "AmazonEKSVPCResourceController" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
  role       = aws_iam_role.eksClusterRole.name
}