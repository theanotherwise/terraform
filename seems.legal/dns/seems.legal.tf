resource "google_dns_managed_zone" "public-seems-legal" {
  name = "seems-legal"
  dns_name = "seems.legal."

  visibility = "public"
}

#resource "google_dns_record_set" "ns-seems-legal" {
#  name = "seems.legal."
#  managed_zone = google_dns_managed_zone.public-seems-legal.name
#  type = "NS"
#  ttl = 300
#
#  rrdatas = [
#    "ns-cloud-e1.googledomains.com.",
#    "ns-cloud-e2.googledomains.com.",
#    "ns-cloud-e3.googledomains.com.",
#    "ns-cloud-e4.googledomains.com."]
#
#  depends_on = [
#    google_dns_managed_zone.public-seems-legal]
#}

