provider "google" {
  credentials = ".credentials.json"
  project = "molten-infusion-277321"
  region = var.region
  zone = var.zone
}

terraform {
  backend "local" {
    path = ".states/terraform.tfstate"
  }
}