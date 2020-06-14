resource "google_compute_subnetwork" "master-node" {
  name = var.master_name
  ip_cidr_range = var.master_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "voting-only-node" {
  name = var.voting_only_name
  ip_cidr_range = var.voting_only_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "ingest-node" {
  name = var.ingest_name
  ip_cidr_range = var.ingest_network_cidr
  region = var.region
  network = google_compute_network.network.name
  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "data-node" {
  name = var.data_name
  ip_cidr_range = var.data_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "ml-node" {
  name = var.ml_name
  ip_cidr_range = var.ml_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "transform-node" {
  name = var.transform_name
  ip_cidr_range = var.transform_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "coordinating-node" {
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

resource "google_compute_subnetwork" "kibana-client" {
  name = var.kibana_client_name
  ip_cidr_range = var.kibana_client_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "logstash-shipper" {
  name = var.logstash_shipper_name
  ip_cidr_range = var.logstash_shipper_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "logstash-indexer" {
  name = var.logstash_indexer_name
  ip_cidr_range = var.logstash_indexer_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "kafka" {
  name = var.kafka_name
  ip_cidr_range = var.kafka_network_cidr
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