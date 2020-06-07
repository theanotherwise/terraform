resource "google_compute_firewall" "from-bastion" {
  name = "from-bastions"
  network = google_compute_network.network.name

  allow {
    protocol = "tcp"
    ports = [
      "22"]
  }

  direction = "INGRESS"
  target_tags = [
    "elasticsearch-cluster"]

  source_tags = [
    "elasticsearch-bastion"]

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_firewall" "to-bastion" {
  name = "to-bastions"
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
    "elasticsearch-bastion"]

  depends_on = [
    google_compute_network.network]
}