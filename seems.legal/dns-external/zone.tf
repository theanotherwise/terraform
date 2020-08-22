resource "google_dns_managed_zone" "public-seems-legal" {
  name = "seems-legal"
  dns_name = "seems.legal."

  visibility = "public"

  depends_on = [
    var.dependencies]
}