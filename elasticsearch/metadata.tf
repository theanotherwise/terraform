resource "google_compute_project_metadata" "default" {
  metadata = {
    ssh-keys = var.ssh_keys_pub
  }
}