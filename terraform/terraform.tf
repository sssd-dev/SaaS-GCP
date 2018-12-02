terraform {
  backend "gcs" {
    prefix  = "terraform/state.tfstate"
    credentials = "./secrets/account.json"
  }
}