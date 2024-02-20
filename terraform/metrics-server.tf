# resource "helm_release" "metrics_server" {
#   name       = "metrics-server"
#   repository = "https://charts.bitnami.com/bitnami"
#   chart      = "metrics-server"
#   version    = "5.8.0"

#   set {
#     name  = "apiService.create"
#     value = "true"
#   }

#   set {
#     name  = "apiService.enable"
#     value = "true"
#   }
# }
