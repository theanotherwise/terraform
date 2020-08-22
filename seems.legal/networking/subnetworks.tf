resource "google_compute_subnetwork" "bastion" {
  name = var.bastion_name
  ip_cidr_range = var.bastion_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "website" {
  name = var.website_name
  ip_cidr_range = var.website_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "vpn" {
  name = var.vpn_name
  ip_cidr_range = var.vpn_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}