resource "google_compute_subnetwork" "bastion" {
  name = var.bastion_name
  ip_cidr_range = var.bastion_network_cidr
  region = var.bastion_region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "gke-regional-cluster" {
  name = var.gke_cluster_name
  ip_cidr_range = var.gke_cluster_network_cidr
  region = var.gke_cluster_region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_subnetwork" "gke-regional-cluster-normal-pool" {
  name = var.gke_normal_pool_name
  ip_cidr_range = var.gke_normal_pool_network_cidr
  region = var.gke_cluster_region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}