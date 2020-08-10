resource "google_dns_record_set" "a-seems-cloud" {
  name = "seems.cloud."
  managed_zone = google_dns_managed_zone.private-seems-legal-cloud.name
  type = "A"
  ttl = 300

  rrdatas = [
    "127.0.0.1"]

  depends_on = [
    google_dns_managed_zone.private-seems-legal-cloud]
}