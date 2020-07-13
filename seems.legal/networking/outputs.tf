output "network_name" {
  value = google_compute_network.network.name
}

output "subnetwork_bastion_name" {
  value = google_compute_subnetwork.bastion.name
}

output "address_bastion_address" {
  value = google_compute_address.bastion.address
}

output "address_frontend_address" {
  value = google_compute_address.frontend.address
}

output "subnetwork_frontend_name" {
  value = google_compute_subnetwork.frontend.name
}

output "subnetwork_application_name" {
  value = google_compute_subnetwork.application.name
}

output "subnetwork_database_name" {
  value = google_compute_subnetwork.database.name
}

output "subnetwork_redis_name" {
  value = google_compute_subnetwork.redis.name
}