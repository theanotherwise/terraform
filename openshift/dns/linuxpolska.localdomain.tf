resource "google_dns_managed_zone" "private-linuxpolska-localdomain" {
  name = "linuxpolska-localdomain"
  dns_name = "linuxpolska.localdomain."

  visibility = "private"

  private_visibility_config {
    networks {
      network_url = var.network_id
    }
  }
}