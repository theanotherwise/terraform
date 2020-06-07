resource "google_compute_address" "web-external" {
  name = "${local.web_name}${count.index}-${random_id.id.hex}"
  count = var.web_count
}

resource "google_compute_address" "app-external" {
  name = "${local.app_name}${count.index}-${random_id.id.hex}"
  count = var.app_count
}

resource "google_compute_address" "db-external" {
  name = "${local.db_name}${count.index}-${random_id.id.hex}"
  count = var.db_count
}

resource "google_compute_address" "bastion-external" {
  name = "${local.bastion_name}${count.index}-${random_id.id.hex}"
  count = var.db_count
}