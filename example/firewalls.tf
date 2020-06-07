resource "google_compute_firewall" "from-bastion" {
  name = "from-bastions-${random_id.id.hex}"
  network = google_compute_network.network.name

  allow {
    protocol = "tcp"
    ports = [
      "22"]
  }

  direction = "INGRESS"
  target_tags = [
    "${local.web_name}-${random_id.id.hex}",
    "${local.app_name}-${random_id.id.hex}",
    "${local.db_name}-${random_id.id.hex}"]

  source_tags = [
    "${local.bastion_name}-${random_id.id.hex}"]

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_firewall" "to-bastion" {
  name = "to-bastions-${random_id.id.hex}"
  network = google_compute_network.network.name

  allow {
    protocol = "tcp"
    ports = [
      "22"]
  }

  direction = "INGRESS"
  source_ranges = [
    "0.0.0.0/0"]
  target_tags = [
    "${local.bastion_name}-${random_id.id.hex}"]

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_firewall" "to-web" {
  name = "to-webs-${random_id.id.hex}"
  network = google_compute_network.network.name

  allow {
    protocol = "tcp"
    ports = [
      "80",
      "443"]
  }

  direction = "INGRESS"
  source_ranges = [
    "0.0.0.0/0"]
  target_tags = [
    "${local.web_name}-${random_id.id.hex}"]

  depends_on = [
    google_compute_network.network]
}