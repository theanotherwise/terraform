resource "google_dns_record_set" "a-seems-legal" {
  name = "seems.legal."
  managed_zone = google_dns_managed_zone.public-seems-legal.name
  type = "A"
  ttl = 300

  rrdatas = [
    "95.101.206.155"]

  depends_on = [
    google_dns_managed_zone.public-seems-legal]
}

resource "google_dns_record_set" "a-alpha-seems-legal" {
  name = "alpha.seems.legal."
  managed_zone = google_dns_managed_zone.public-seems-legal.name
  type = "A"
  ttl = 300

  rrdatas = [
    "8.8.8.8"]

  depends_on = [
    google_dns_managed_zone.public-seems-legal]
}

resource "google_dns_record_set" "a-beta-seems-legal" {
  name = "beta.seems.legal."
  managed_zone = google_dns_managed_zone.public-seems-legal.name
  type = "A"
  ttl = 300

  rrdatas = [
    "8.8.8.8"]

  depends_on = [
    google_dns_managed_zone.public-seems-legal]
}

resource "google_dns_record_set" "a-gamma-seems-legal" {
  name = "gamma.seems.legal."
  managed_zone = google_dns_managed_zone.public-seems-legal.name
  type = "A"
  ttl = 300

  rrdatas = [
    "8.8.8.8"]

  depends_on = [
    google_dns_managed_zone.public-seems-legal]
}

resource "google_dns_record_set" "a-kappa-seems-legal" {
  name = "kappa.seems.legal."
  managed_zone = google_dns_managed_zone.public-seems-legal.name
  type = "A"
  ttl = 300

  rrdatas = [
    "8.8.8.8"]

  depends_on = [
    google_dns_managed_zone.public-seems-legal]
}

resource "google_dns_record_set" "a-omega-seems-legal" {
  name = "omega.seems.legal."
  managed_zone = google_dns_managed_zone.public-seems-legal.name
  type = "A"
  ttl = 300

  rrdatas = [
    "8.8.8.8"]

  depends_on = [
    google_dns_managed_zone.public-seems-legal]
}

resource "google_dns_record_set" "a-zeta-seems-legal" {
  name = "zeta.seems.legal."
  managed_zone = google_dns_managed_zone.public-seems-legal.name
  type = "A"
  ttl = 300

  rrdatas = [
    "8.8.8.8"]

  depends_on = [
    google_dns_managed_zone.public-seems-legal]
}

resource "google_dns_record_set" "a-delta-seems-legal" {
  name = "delta.seems.legal."
  managed_zone = google_dns_managed_zone.public-seems-legal.name
  type = "A"
  ttl = 300

  rrdatas = [
    "8.8.8.8"]

  depends_on = [
    google_dns_managed_zone.public-seems-legal]
}


resource "google_dns_record_set" "a-epsilon-seems-legal" {
  name = "epsilon.seems.legal."
  managed_zone = google_dns_managed_zone.public-seems-legal.name
  type = "A"
  ttl = 300

  rrdatas = [
    "8.8.8.8"]

  depends_on = [
    google_dns_managed_zone.public-seems-legal]
}