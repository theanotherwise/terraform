locals {
  web_name        = "${var.env_name}-${var.name}-${var.web_name}"
  app_name        = "${var.env_name}-${var.name}-${var.app_name}"
  db_name         = "${var.env_name}-${var.name}-${var.db_name}"
  bastion_name    = "${var.env_name}-${var.name}-${var.bastion_name}"
}