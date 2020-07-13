resource "google_compute_subnetwork" "bastion" {
  name = var.bastion_name
  ip_cidr_range = var.bastion_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "frontend" {
  name = var.frontend_name
  ip_cidr_range = var.frontend_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "application" {
  name = var.application_name
  ip_cidr_range = var.application_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "database" {
  name = var.database_name
  ip_cidr_range = var.database_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "redis" {
  name = var.redis_name
  ip_cidr_range = var.redis_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}