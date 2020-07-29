output "openshift_compute_nodes_names" {
  value = google_compute_instance.openshift-compute.*.name
}

output "openshift_compute_network_interfaces" {
  value = google_compute_instance.openshift-compute.*.network_interface
}

output "openshift_master_nodes_names" {
  value = google_compute_instance.openshift-master.*.name
}

output "openshift_master_network_interfaces" {
  value = google_compute_instance.openshift-master.*.network_interface
}

output "openshift_infra_nodes_names" {
  value = google_compute_instance.openshift-infra.*.name
}

output "openshift_infra_network_interfaces" {
  value = google_compute_instance.openshift-infra.*.network_interface
}

output "openshift_lb_nodes_names" {
  value = google_compute_instance.openshift-lb.*.name
}

output "openshift_lb_network_interfaces" {
  value = google_compute_instance.openshift-lb.*.network_interface
}