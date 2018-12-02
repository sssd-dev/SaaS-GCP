variable "backend_bucket" {
  type = "string"
  default = "tf-store-bucket"
}
variable "gcp_project" {
  type = "string"
  default = "terraform-gke-211705"
}
variable "region" {
  type = "string"
  default = "northamerica-northeast1"
}
variable "master_user" {
  
}
variable "master_pass" {
  
}
variable "node_pool_name" {
  type = "string"
  default = "tf-node-pool"
}

variable "gcp_container" {
  type = "string"
  default = "tf-container-cluster"
}

