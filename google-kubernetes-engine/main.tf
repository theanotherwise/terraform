provider "google" {
  credentials = ".credentials.json"
  project = "testing-287709"
  region = var.region
}

terraform {
  backend "local" {
    path = ".states/terraform.tfstate"
  }
}