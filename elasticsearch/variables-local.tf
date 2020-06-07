locals {
  master_name        = "${var.name}-${var.master_name}"
  voting_only_name   = "${var.name}-${var.voting_only_name}"
  ingest_name        = "${var.name}-${var.ingest_name}"
  data_name          = "${var.name}-${var.data_name}"
  ml_name            = "${var.name}-${var.ml_name}"
  transform_name     = "${var.name}-${var.transform_name}"
  coordinating_name  = "${var.name}-${var.coordinating_name}"
  kibana_name        = "${var.name}-${var.kibana_name}"
  bastion_name       = "${var.name}-${var.bastion_name}"
}