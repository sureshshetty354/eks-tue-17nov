
resource "aws_eks_node_group" "worker" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "worker-node-group"
  node_role_arn   = aws_iam_role.eks_node_role.arn

  subnet_ids = module.vpc.public_subnets

  instance_types = ["t3.medium"]

  scaling_config {
    desired_size = 1
    min_size     = 1
    max_size     = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.worker_policy
  ]
}
