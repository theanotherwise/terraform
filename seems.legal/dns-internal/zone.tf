resource "google_dns_managed_zone" "private-seems-cloud" {
  name = "private-seems-cloud"
  dns_name = "seems.cloud."

  visibility = "private"

  private_visibility_config {
    networks {
      network_url = var.network_id
    }
  }

  depends_on = [
    var.dependencies]
}