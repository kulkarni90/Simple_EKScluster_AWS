provider "aws" {
  region = "ap-south-1"
}

resource "aws_eks_cluster" "k8" {
  name     = "k8"
  role_arn = aws_iam_role.k8.arn

  vpc_config {
    subnet_ids = ["aws_subnet.k8-subnet_1", "aws_subnet.k8-subnet_2"]
  }
  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  
  depends_on = [
    aws_iam_role_policy_attachment.k8-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.k8-AmazonEKSVPCResourceController,
  ]
}

output "endpoint" {
  value = aws_eks_cluster.k8.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.k8.certificate_authority[0].data
}
