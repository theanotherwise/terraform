output "bastion_internal_address" {
  value = google_compute_instance.bastion.network_interface[0].network_ip
}

output "bastion_external_address" {
  value = google_compute_instance.bastion.network_interface[0].access_config[0].nat_ip
}