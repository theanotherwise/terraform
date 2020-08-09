resource "google_dns_record_set" "test-local" {
  name = "test.local."
  managed_zone = google_dns_managed_zone.private-local.name
  type = "A"
  ttl = 300

  rrdatas = [
    "127.0.0.1"]

  depends_on = [
    google_dns_managed_zone.private-local]
}