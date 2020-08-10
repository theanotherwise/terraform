provider "google" {
  credentials = ".credentials.json"
  project = "molten-infusion-277321"
  region = var.region
}

terraform {
  backend "local" {
    path = ".states/terraform.tfstate"
  }
}