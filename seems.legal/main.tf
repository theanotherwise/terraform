provider "google" {
  credentials = ".credentials.json"
  project = "empirical-weft-283219"
  region = var.region
  zone = var.zone
}

terraform {
  backend "local" {
    path = ".states/terraform.tfstate"
  }
}