resource "google_dns_managed_zone" "private-seems-legal-cloud" {
  name = "seems-cloud"
  dns_name = "seems.cloud."

  description = "seems.cloud."

  visibility = "private"

  private_visibility_config {
    networks {
      network_url = var.network_id
    }
  }
}