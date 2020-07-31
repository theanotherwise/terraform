resource "google_compute_firewall" "from-bastion-to-all" {
  name = "from-bastion-to-cluster"
  network = google_compute_network.network.name

  direction = "INGRESS"

  source_tags = [
    "bastion"]
  target_tags = [
    "all"]

  allow {
    protocol = "all"
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

resource "google_compute_firewall" "between-openshift-nodes" {
  name = "between-openshift-nodes"
  network = google_compute_network.network.name

  direction = "INGRESS"

  source_tags = [
    "openshift"]
  target_tags = [
    "openshift"]

  allow {
    protocol = "all"
  }

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_firewall" "from-internet-to-openshift-masters" {
  name = "from-internet-to-openshift-masters"
  network = google_compute_network.network.name

  direction = "INGRESS"

  source_ranges = [
    "0.0.0.0/0"]
  target_tags = [
    "openshift-master"]

  allow {
    protocol = "tcp"
    ports = [
      "443",
      "8443"]
  }

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_firewall" "from-internet-to-openshift-lb" {
  name = "from-internet-to-openshift-lb"
  network = google_compute_network.network.name

  direction = "INGRESS"

  source_ranges = [
    "0.0.0.0/0"]
  target_tags = [
    "openshift-lb"]

  allow {
    protocol = "tcp"
    ports = [
      "80",
      "443",
      "8443"]
  }

  depends_on = [
    google_compute_network.network]
}