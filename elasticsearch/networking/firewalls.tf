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

resource "google_compute_firewall" "from-kibana-client-to-kibana" {
  name = "from-kibana-client-to-kibana"
  network = google_compute_network.network.name

  direction = "INGRESS"

  source_tags = [
    "kibana-client"]
  target_tags = [
    "kibana"]

  allow {
    protocol = "tcp"
    ports = [
      "5601"]
  }

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_firewall" "from-internet-to-kibana-client" {
  name = "from-internet-to-kibana-client"
  network = google_compute_network.network.name

  direction = "INGRESS"

  source_ranges = [
    "0.0.0.0/0"]
  target_tags = [
    "kibana-client"]

  allow {
    protocol = "tcp"
    ports = [
      "22",
      "80",
      "443"]
  }

  depends_on = [
    google_compute_network.network]
}

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

resource "google_compute_firewall" "inside-elsticsearch-cluster" {
  name = "inside-elsticsearch-cluster"
  network = google_compute_network.network.name

  direction = "INGRESS"

  target_tags = [
    "elasticsearch-cluster"]

  source_tags = [
    "elasticsearch-cluster"]

  allow {
    protocol = "tcp"
    ports = [
      "9200",
      "9300"]
  }

  depends_on = [
    google_compute_network.network]
}