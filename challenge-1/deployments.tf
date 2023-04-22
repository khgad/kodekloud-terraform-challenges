resource "kubernetes_deployment" "frontend" {
  metadata {
    name = "frontend"
    labels = {
      "name" = "frontend"
    }
  }
  spec {
    replicas = 4
    selector {
      match_labels = {
        "name" = "webapp"
      }
    }
    template {
      metadata {
        labels = {
          "name" = "webapp"
        }
      }
      spec {
        container {
          name  = "simple-webapp"
          image = "kodekloud/webapp-color:v1"
          port {
            container_port = 8080
          }
        }
      }
    }
  }
}
