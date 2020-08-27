resource "google_compute_firewall" "from-internet-to-bastion" {
  name = "from-internet-to-bastion"
  network = google_compute_network.network.name

  direction = "INGRESS"

  source_ranges = [
    "0.0.0.0/0"]

  target_tags = [
    "bastion"]

  allow {
    protocol = "tcp"
    ports = [
      "22"]
  }

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_firewall" "from-bastion-to-all" {
  name = "from-bastion-to-cluster"
  network = google_compute_network.network.name

  direction = "INGRESS"

  source_tags = [
    "bastion"]

  target_tags = [
    "all"]

  allow {
    protocol = "tcp"
    ports = [
      "22"]
  }

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_firewall" "from-internet-to-website" {
  name = "from-internet-to-frontend"
  network = google_compute_network.network.name

  direction = "INGRESS"

  source_ranges = [
    "0.0.0.0/0"]

  target_tags = var.website_tags

  allow {
    protocol = "tcp"
    ports = [
      "80",
      "443"]
  }

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_firewall" "from-internet-to-vpn" {
  name = "from-internet-to-vpn"
  network = google_compute_network.network.name

  direction = "INGRESS"

  source_ranges = [
    "0.0.0.0/0"]

  target_tags = var.website_tags

  allow {
    protocol = "tcp"
    ports = [
      "443"]
  }

  depends_on = [
    google_compute_network.network]
}