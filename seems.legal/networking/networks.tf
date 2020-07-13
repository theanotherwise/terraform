resource "google_compute_network" "network" {
  name = var.network
  auto_create_subnetworks = false
}