provider "google-beta" {
  project = "${var.gcp_project}"
  region  = "northamerica-northeast1"
  zone    = "northamerica-northeast1-a"
  credentials = "${file("./secrets/account.json")}"
}