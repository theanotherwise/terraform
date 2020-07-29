resource "google_compute_subnetwork" "bastion" {
  name = var.bastion_name
  ip_cidr_range = var.bastion_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "openshift-master" {
  name = var.openshift_master_name
  ip_cidr_range = var.openshift_master_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "openshift-compute" {
  name = var.openshift_compute_name
  ip_cidr_range = var.openshift_compute_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "openshift-infra" {
  name = var.openshift_infra_name
  ip_cidr_range = var.openshift_infra_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "openshift-lb" {
  name = var.openshift_lb_name
  ip_cidr_range = var.openshift_lb_network_cidr
  region = var.region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}