resource "google_compute_address" "bastion" {
  name = "${var.bastion_name}"
}

resource "google_compute_address" "openshift-master" {
  name = "${var.openshift_master_name}-${count.index}"
  count = var.openshift_master_count
}

resource "google_compute_address" "openshift-compute" {
  name = "${var.openshift_compute_name}-${count.index}"
  count = var.openshift_compute_count
}

resource "google_compute_address" "openshift-infra" {
  name = "${var.openshift_infra_name}-${count.index}"
  count = var.openshift_infra_count
}

resource "google_compute_address" "openshift-lb" {
  name = "${var.openshift_lb_name}-${count.index}"
  count = var.openshift_lb_count
}