resource "google_compute_address" "bastion" {
  name = "${var.bastion_name}"
}

resource "google_compute_address" "website" {
  name = "${var.website_name}"
}

resource "google_compute_address" "vpn" {
  name = "${var.vpn_name}${count.index}"
  count = var.vpn_count
}