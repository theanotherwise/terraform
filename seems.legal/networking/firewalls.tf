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

resource "google_compute_firewall" "from-internet-to-frontend" {
  name = "from-internet-to-frontend"
  network = google_compute_network.network.name

  direction = "INGRESS"

  source_ranges = [
    "0.0.0.0/0"]
  target_tags = [
    "frontend"]

  allow {
    protocol = "tcp"
    ports = [
      "80",
      "443"]
  }

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_firewall" "from-frontend-to-application" {
  name = "from-frontend-to-application"
  network = google_compute_network.network.name

  direction = "INGRESS"

  source_tags = [
    "frontend"]
  target_tags = [
    "application"]

  allow {
    protocol = "tcp"
    ports = [
      "8080"]
  }

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_firewall" "from-application-to-database" {
  name = "from-application-to-database"
  network = google_compute_network.network.name

  direction = "INGRESS"

  source_tags = [
    "application"]
  target_tags = [
    "database"]

  allow {
    protocol = "tcp"
    ports = [
      "5432"]
  }

  depends_on = [
    google_compute_network.network]
}

resource "google_compute_firewall" "from-application-to-redis" {
  name = "from-application-to-redis"
  network = google_compute_network.network.name

  direction = "INGRESS"

  source_tags = [
    "application"]
  target_tags = [
    "redis"]

  allow {
    protocol = "tcp"
    ports = [
      "6379"]
  }

  depends_on = [
    google_compute_network.network]
}