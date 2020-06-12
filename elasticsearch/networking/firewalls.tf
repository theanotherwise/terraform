resource "google_compute_firewall" "from-bastion-to-cluster" {
  name = "from-bastion-to-cluster"
  network = google_compute_network.network.name

  allow {
    protocol = "tcp"
    ports = [
      "22"]
  }

  direction = "INGRESS"
  target_tags = [
    "cluster"]

  source_tags = [
    "bastion"]

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_firewall" "from-bastion-to-kibana" {
  name = "from-bastion-to-kibana"
  network = google_compute_network.network.name

  allow {
    protocol = "tcp"
    ports = [
      "22"]
  }

  direction = "INGRESS"
  target_tags = [
    "kibana"]

  source_tags = [
    "bastion"]

  depends_on = [
    google_compute_network.network]
}


resource "google_compute_firewall" "from-client-to-kibana" {
  name = "from-client-to-kibana"
  network = google_compute_network.network.name

  allow {
    protocol = "tcp"
    ports = [
      "5601"]
  }

  direction = "INGRESS"
  target_tags = [
    "kibana"]

  source_tags = [
    "client"]

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_firewall" "from-internet-to-client" {
  name = "from-internet-to-client"
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
    "client"]

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_firewall" "from-internet-to-bastion" {
  name = "from-internet-to-bastion"
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
    "bastion"]

  depends_on = [
    google_compute_network.network]
}