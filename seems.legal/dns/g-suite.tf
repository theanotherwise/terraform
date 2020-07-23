resource "google_dns_record_set" "spf-seems-legal" {
  name = "seems.legal."
  managed_zone = google_dns_managed_zone.public-seems-legal.name
  type = "SPF"
  ttl = 300

  rrdatas = [
    "\"v=spf1 include:_spf.google.com ~all\""]

  depends_on = [
    google_dns_managed_zone.public-seems-legal]
}

resource "google_dns_record_set" "txt-seems-legal" {
  name = "seems.legal."
  managed_zone = google_dns_managed_zone.public-seems-legal.name
  type = "TXT"
  ttl = 300

  rrdatas = [
    "\"v=spf1 include:_spf.google.com ~all\"",
    "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCkE0sIXS3aBQN5HsnnJIS8MRaUMmUaXMVO7e6ZYprMP2cd3KGxAGSeWN1IjuWjYzHH8P8WX8OGDczmc1AECdxe/0meix0di/Cr093eQdG7HIKe4NFw94ENxNrK4GrPAZE6DEZ71KCGXDX4IBWYK8JQv/lOx3Jlsl8iWw3cchrfqwIDAQAB"]

  depends_on = [
    google_dns_managed_zone.public-seems-legal]
}

resource "google_dns_record_set" "mx-seems-legal" {
  name = "seems.legal."
  managed_zone = google_dns_managed_zone.public-seems-legal.name
  type = "MX"
  ttl = 300

  rrdatas = [
    "1 aspmx.l.google.com.",
    "5 alt1.aspmx.l.google.com.",
    "5 alt2.aspmx.l.google.com.",
    "10 alt3.aspmx.l.google.com.",
    "10 alt4.aspmx.l.google.com."]

  depends_on = [
    google_dns_managed_zone.public-seems-legal]
}
