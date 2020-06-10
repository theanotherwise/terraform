resource "google_compute_address" "master" {
  name = "${local.master_name}${count.index}"
  count = var.master_count
}

resource "google_compute_address" "voting-only" {
  name = "${local.voting_only_name}${count.index}"
  count = var.voting_only_count
}

resource "google_compute_address" "ingest" {
  name = "${local.ingest_name}${count.index}"
  count = var.ingest_count
}

resource "google_compute_address" "data" {
  name = "${local.data_name}${count.index}"
  count = var.data_count
}

resource "google_compute_address" "ml" {
  name = "${local.ml_name}${count.index}"
  count = var.ml_count
}

resource "google_compute_address" "transform" {
  name = "${local.transform_name}${count.index}"
  count = var.transform_count
}

resource "google_compute_address" "coordinating" {
  name = "${local.coordinating_name}${count.index}"
  count = var.coordinating_count
}

resource "google_compute_address" "kibana" {
  name = "${local.kibana_name}${count.index}"
  count = var.kibana_count
}

resource "google_compute_address" "bastion" {
  name = "${local.bastion_name}"
}