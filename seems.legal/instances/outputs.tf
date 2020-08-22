output "website_internal_address" {
  value = google_compute_instance.website.network_interface[0].network_ip
}