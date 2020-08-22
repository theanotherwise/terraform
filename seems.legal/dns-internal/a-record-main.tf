resource "google_dns_record_set" "a-bastion-seems-cloud" {
  name = "${var.bastion_name}.seems.cloud."
  managed_zone = google_dns_managed_zone.private-seems-cloud.name
  type = "A"
  ttl = 300

  rrdatas = [
    var.bastion_address]

  depends_on = [
    google_dns_managed_zone.private-seems-cloud]
}

resource "google_dns_record_set" "a-seems-cloud" {
  name = "seems.cloud."
  managed_zone = google_dns_managed_zone.private-seems-cloud.name
  type = "A"
  ttl = 300

  rrdatas = [
    var.website_address]

  depends_on = [
    google_dns_managed_zone.private-seems-cloud]
}