data "google_compute_zones" "available" {
    project = "${var.gcp_project}"
}
resource "google_container_node_pool" "np" {
  name       = "${var.node_pool_name}"
  region     = "${var.region}"
  cluster    = "${google_container_cluster.primary.name}"
  initial_node_count = 1
  project = "${var.gcp_project}"
  node_config {
    preemptible  = true
    machine_type = "n1-standard-1"

    oauth_scopes = [
      "compute-rw",
      "storage-ro",
      "logging-write",
      "monitoring",
    ]
    preemptible = true
  }
  autoscaling {
      min_node_count = 1
      max_node_count = 2
  }
}
resource "google_container_cluster" "primary" {
  name               = "${var.gcp_container}"
  region               = "${var.region}"
  project = "${var.gcp_project}"

  master_auth {
    username = "${var.master_user}"
    password = "${var.master_pass}"
  }
  node_pool {
      name = "${var.node_pool_name}"
  }
}