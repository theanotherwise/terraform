resource "google_compute_project_metadata" "default" {
  metadata = {
    ssh-keys = var.terraform_ssh_keys_pub
  }
}

resource "random_id" "id" {
  byte_length = 8
}