output "network_name" {
  value = google_compute_network.network.name
}

output "network_id" {
  value = google_compute_network.network.id
}

output "subnetwork_bastion_name" {
  value = google_compute_subnetwork.bastion.name
}

output "address_bastion_address" {
  value = google_compute_address.bastion.address
}

output "subnetwork_gke_cluster_name" {
  value = google_compute_subnetwork.gke-cluster.name
}