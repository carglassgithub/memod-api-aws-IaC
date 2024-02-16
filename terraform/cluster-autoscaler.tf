# resource "helm_release" "cluster-autoscaler" {
#   name             = "cluster-autoscaler"
#   namespace        = local.k8s_service_account_namespace
#   repository       = "https://kubernetes.github.io/autoscaler"
#   chart            = "cluster-autoscaler"
#   version          = "9.10.7"
#   create_namespace = false

#   set {
#     name  = "awsRegion"
#     value = local.aws_region
#   }
#   set {
#     name  = "autoDiscovery.clusterName"
#     value = "${terraform.workspace}-${var.eks_cluster_name}"
#   }
#   set {
#     name  = "autoDiscovery.enabled"
#     value = "true"
#   }
# }