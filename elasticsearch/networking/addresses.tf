resource "google_compute_address" "master" {
  name = "${var.master_name}${count.index}"
  count = var.master_count
}

resource "google_compute_address" "voting-only" {
  name = "${var.voting_only_name}${count.index}"
  count = var.voting_only_count
}

resource "google_compute_address" "ingest" {
  name = "${var.ingest_name}${count.index}"
  count = var.ingest_count
}

resource "google_compute_address" "data" {
  name = "${var.data_name}${count.index}"
  count = var.data_count
}

resource "google_compute_address" "ml" {
  name = "${var.ml_name}${count.index}"
  count = var.ml_count
}

resource "google_compute_address" "transform" {
  name = "${var.transform_name}${count.index}"
  count = var.transform_count
}

resource "google_compute_address" "coordinating" {
  name = "${var.coordinating_name}${count.index}"
  count = var.coordinating_count
}

resource "google_compute_address" "kibana" {
  name = "${var.kibana_name}${count.index}"
  count = var.kibana_count
}

resource "google_compute_address" "kibana-client" {
  name = "${var.kibana_client_name}${count.index}"
  count = var.kibana_client_count
}

resource "google_compute_address" "logstash-shipper-client" {
  name = "${var.logstash_shipper_name}${count.index}"
  count = var.logstash_shipper_count
}

resource "google_compute_address" "logstash-indexer-client" {
  name = "${var.logstash_indexer_name}${count.index}"
  count = var.logstash_indexer_count
}
resource "google_compute_address" "bastion" {
  name = "${var.bastion_name}"
}