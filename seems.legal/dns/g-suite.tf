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
    "\"v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAi1jos0mec95dXckogWgIVzYAKbn9Zi9ocSj2pJGszEsgkq//dmbjRO7gddN3hK55IXQnwGMx+0/4mozWenTJEubIqCcYQbD39T+P6IQJ9uhEhzCccBxRSetHLWb+eGcOX6Zwgc2kOKTCeUnsTX8DZmEoiGPYHz7snKaR5J9bKGCk5hMvg4TAhjberhjyg9M9V\" \"9V4zriUycFMd4zoLf1bR0dGHIhdW4I4a/aeLVx8rm9G4MXtOrN3mDIyoJPMJxJ/DzDax9lqkUVOw8WjcSaj/DWd2dGhZKWep3ZoS3Zp+vR/3UUE0UUTzgquAM5iEFsp6a43ET2ZQxo0HI+qUwSQFwIDAQAB\""]

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