output "network_name" {
  value = google_compute_network.network.name
}

output "network_id" {
  value = google_compute_network.network.id
}

output "bastion_address" {
  value = google_compute_address.bastion.address
}

output "subnetwork_bastion_name" {
  value = google_compute_subnetwork.bastion.name
}

output "openshift_master_addresses" {
  value = google_compute_address.openshift-master.*.address
}

output "openshift_master_subnetwork_name" {
  value = google_compute_subnetwork.openshift-master.name
}

output "openshift_compute_addresses" {
  value = google_compute_address.openshift-compute.*.address
}

output "openshift_compute_subnetwork_name" {
  value = google_compute_subnetwork.openshift-compute.name
}

output "openshift_infra_addresses" {
  value = google_compute_address.openshift-infra.*.address
}

output "openshift_infra_subnetwork_name" {
  value = google_compute_subnetwork.openshift-infra.name
}

output "openshift_lb_addresses" {
  value = google_compute_address.openshift-lb.*.address
}

output "openshift_lb_subnetwork_name" {
  value = google_compute_subnetwork.openshift-lb.name
}