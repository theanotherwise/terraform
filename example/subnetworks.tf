resource "google_compute_subnetwork" "web-internal" {
  name          = "${local.web_name}-${random_id.id.hex}"
  ip_cidr_range = var.web_network_cidr
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "app-internal" {
  name          = "${local.app_name}-${random_id.id.hex}"
  ip_cidr_range = var.app_network_cidr
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "db-internal" {
  name          = "${local.db_name}-${random_id.id.hex}"
  ip_cidr_range = var.db_network_cidr
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "bastion-internal" {
  name          = "${local.bastion_name}-${random_id.id.hex}"
  ip_cidr_range = var.bastion_network_cidr
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}