resource "google_dns_managed_zone" "private-local" {
  name = "local"
  dns_name = "local."

  visibility = "private"

  private_visibility_config {
    networks {
      network_url = var.network_id
    }
  }
}