//resource "google_compute_firewall" "from-bastion" {
//  name = "from-bastions"
//  network = google_compute_network.network.name
//
//  allow {
//    protocol = "tcp"
//    ports = [
//      "22"]
//  }
//
//  direction = "INGRESS"
//  target_tags = [
//    "${local.web_name}",
//    "${local.app_name}",
//    "${local.db_name}"]
//
//  source_tags = [
//    "${local.bastion_name}"]
//
//  depends_on = [
//    google_compute_network.network]
//}
//
//resource "google_compute_firewall" "to-bastion" {
//  name = "to-bastions"
//  network = google_compute_network.network.name
//
//  allow {
//    protocol = "tcp"
//    ports = [
//      "22"]
//  }
//
//  direction = "INGRESS"
//  source_ranges = [
//    "0.0.0.0/0"]
//  target_tags = [
//    "${local.bastion_name}"]
//
//  depends_on = [
//    google_compute_network.network]
//}
//
//resource "google_compute_firewall" "to-web" {
//  name = "to-webs"
//  network = google_compute_network.network.name
//
//  allow {
//    protocol = "tcp"
//    ports = [
//      "80",
//      "443"]
//  }
//
//  direction = "INGRESS"
//  source_ranges = [
//    "0.0.0.0/0"]
//  target_tags = [
//    "${local.web_name}"]
//
//  depends_on = [
//    google_compute_network.network]
//}