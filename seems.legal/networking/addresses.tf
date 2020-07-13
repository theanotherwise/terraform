resource "google_compute_address" "bastion" {
  name = "${var.bastion_name}"
}

resource "google_compute_address" "frontend" {
  name = "${var.frontend_name}"
}