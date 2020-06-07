resource "google_compute_subnetwork" "master" {
  name          = local.master_name
  ip_cidr_range = var.master_network_cidr
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "voting-only" {
  name          = local.voting_only_name
  ip_cidr_range = var.data_network_cidr
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "ingest" {
  name          = local.ingest_name
  ip_cidr_range = var.ingest_network_cidr
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "data" {
  name          = local.data_name
  ip_cidr_range = var.voting_only_network_cidr
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "ml" {
  name          = local.ml_name
  ip_cidr_range = var.ml_network_cidr
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "transform" {
  name          = local.transform_name
  ip_cidr_range = var.transform_network_cidr
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "coordinating" {
  name          = local.coordinating_name
  ip_cidr_range = var.coordinating_network_cidr
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "kibana" {
  name          = local.kibana_name
  ip_cidr_range = var.kibana_network_cidr
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "bastion" {
  name          = local.bastion_name
  ip_cidr_range = var.bastion_network_cidr
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}