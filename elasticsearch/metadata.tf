resource "google_compute_project_metadata" "default" {
  metadata = {
    ssh-keys = var.terraform_ssh_keys_pub
  }
}