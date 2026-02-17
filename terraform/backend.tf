terraform {
  backend "gcs" {
    bucket = "terraform-backend-om"
    prefix = "k8s_greeter"
  }
}