resource "google_compute_network" "network" {
  name                    = "${var.network}-${random_id.id.hex}"
  auto_create_subnetworks = false
}