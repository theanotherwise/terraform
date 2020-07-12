resource "google_compute_address" "bastion" {
  name = "${var.bastion_name}"
}