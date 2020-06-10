resource "google_compute_subnetwork" "master" {
  name = var.master_name
  ip_cidr_range = var.master_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "voting-only" {
  name = var.voting_only_name
  ip_cidr_range = var.voting_only_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "ingest" {
  name = var.ingest_name
  ip_cidr_range = var.ingest_network_cidr
  region = var.region
  network = google_compute_network.network.name
  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "data" {
  name = var.data_name
  ip_cidr_range = var.data_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "ml" {
  name = var.ml_name
  ip_cidr_range = var.ml_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "transform" {
  name = var.transform_name
  ip_cidr_range = var.transform_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "coordinating" {
  name = var.coordinating_name
  ip_cidr_range = var.coordinating_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "kibana" {
  name = var.kibana_name
  ip_cidr_range = var.kibana_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "bastion" {
  name = var.bastion_name
  ip_cidr_range = var.bastion_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}