
output "cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.eks.endpoint
}

output "worker_node_group" {
  value = aws_eks_node_group.worker.node_group_name
}
