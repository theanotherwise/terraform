resource "google_dns_record_set" "mx-seems-cloud" {
  name = "seems.cloud."
  managed_zone = google_dns_managed_zone.public-seems-cloud.name
  type = "MX"
  ttl = 3600

  rrdatas = [
    "5 gmr-smtp-in.l.google.com.",
    "10 alt1.gmr-smtp-in.l.google.com.",
    "20 alt2.gmr-smtp-in.l.google.com.",
    "30 alt3.gmr-smtp-in.l.google.com.",
    "40 alt4.gmr-smtp-in.l.google.com."]

  depends_on = [
    google_dns_managed_zone.public-seems-cloud]
}