resource "google_dns_record_set" "a-bastion-seems-legal" {
  name = "${var.bastion_name}.seems.legal."
  managed_zone = google_dns_managed_zone.public-seems-legal.name
  type = "A"
  ttl = 300

  rrdatas = [
    var.bastion_address]

  depends_on = [
    google_dns_managed_zone.public-seems-legal]
}

resource "google_dns_record_set" "a-website-seems-legal" {
  name = "seems.legal."
  managed_zone = google_dns_managed_zone.public-seems-legal.name
  type = "A"
  ttl = 300

  rrdatas = [
    var.website_address]

  depends_on = [
    google_dns_managed_zone.public-seems-legal]
}

resource "google_dns_record_set" "a-website-www-seems-legal" {
  name = "www.seems.legal."
  managed_zone = google_dns_managed_zone.public-seems-legal.name
  type = "A"
  ttl = 300

  rrdatas = [
    var.website_address]

  depends_on = [
    google_dns_managed_zone.public-seems-legal]
}
