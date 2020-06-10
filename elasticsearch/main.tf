provider "google" {
  credentials = ".katana-sh-ee20a1608e98.json"
  project = "molten-infusion-277321"
  region = var.region
  zone = var.zone
}

resource "google_compute_project_metadata" "default" {
  metadata = {
    ssh-keys = var.terraform_ssh_keys_pub
  }
}

resource "random_id" "id" {
  byte_length = 8
}