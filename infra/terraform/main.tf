provider "aws" {
  region = "us-west-2"
}

resource "aws_eks_cluster" "financial_reconciliation" {
  name     = "financial-reconciliation-cluster"
  role_arn = "arn:aws:iam::123456789012:role/eks-service-role"

  vpc_config {
    subnet_ids = ["subnet-abcde123", "subnet-bcdef234"]
  }
}

resource "aws_eks_node_group" "financial_reconciliation_nodes" {
  cluster_name    = aws_eks_cluster.financial_reconciliation.name
  node_group_name = "financial-reconciliation-nodes"
  node_role_arn   = "arn:aws:iam::123456789012:role/eks-node-role"
  subnet_ids      = ["subnet-abcde123", "subnet-bcdef234"]
  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }
}