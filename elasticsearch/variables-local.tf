locals {
  master_name        = "${var.name}-${var.env_name}-${var.master_name}"
  voting_only_name   = "${var.name}-${var.env_name}-${var.voting_only_name}"
  ingest_name        = "${var.name}-${var.env_name}-${var.ingest_name}"
  data_name          = "${var.name}-${var.env_name}-${var.data_name}"
  ml_name            = "${var.name}-${var.env_name}-${var.ml_name}"
  transform_name     = "${var.name}-${var.env_name}-${var.transform_name}"
  coordinating_name  = "${var.name}-${var.env_name}-${var.coordinating_name}"
  bastion_name       = "${var.name}-${var.env_name}-${var.bastion_name}"
}