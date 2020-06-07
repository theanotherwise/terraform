resource "google_compute_instance" "web-instance" {
  name          = "${local.web_name}${count.index}-${random_id.id.hex}"
  machine_type  = var.web_machine_type
  count         = var.web_count

  tags          = ["${local.web_name}-${random_id.id.hex}"]

  boot_disk {
    initialize_params {
      image     = var.image
    }
  }
  network_interface {
    subnetwork  = google_compute_subnetwork.web-internal.name
    access_config {
      nat_ip = "${element(google_compute_address.web-external.*.address, count.index)}"
    }
  }

  provisioner "local-exec" {
    command = var.apt_install_apache2
  }

  allow_stopping_for_update = true
  depends_on    = [google_compute_subnetwork.web-internal, google_compute_subnetwork.web-internal]
}

resource "google_compute_instance" "app-instance" {
  name          = "${local.app_name}${count.index}-${random_id.id.hex}"
  machine_type  = var.app_machine_type
  count         = var.app_count

  tags          = ["${local.app_name}-${random_id.id.hex}"]

  boot_disk {
    initialize_params {
      image     = var.image
    }
  }
  network_interface {
    subnetwork  = google_compute_subnetwork.app-internal.name
    access_config {
      nat_ip = "${element(google_compute_address.app-external.*.address, count.index)}"
    }
  }

  allow_stopping_for_update = true
  depends_on    = [google_compute_subnetwork.app-internal, google_compute_subnetwork.app-internal]
}

resource "google_compute_instance" "db-instance" {
  name          = "${local.db_name}${count.index}-${random_id.id.hex}"
  machine_type  = var.db_machine_type
  count         = var.db_count

  tags          = ["${local.web_name}-${random_id.id.hex}"]

  boot_disk {
    initialize_params {
      image     = var.image
    }
  }
  network_interface {
    subnetwork  = google_compute_subnetwork.db-internal.name
    access_config {
      nat_ip = "${element(google_compute_address.db-external.*.address, count.index)}"
    }
  }

  allow_stopping_for_update = true
  depends_on    = [google_compute_subnetwork.db-internal, google_compute_subnetwork.db-internal]
}

resource "google_compute_instance" "bastion-instance" {
  name          = "${local.bastion_name}${count.index}-${random_id.id.hex}"
  machine_type  = var.bastion_machine_type
  count         = var.bastion_count

  tags          = ["${local.bastion_name}-${random_id.id.hex}"]

  boot_disk {
    initialize_params {
      image     = var.image
    }
  }
  network_interface {
    subnetwork  = google_compute_subnetwork.bastion-internal.name
    access_config {
      nat_ip = "${element(google_compute_address.bastion-external.*.address, count.index)}"
    }
  }

  allow_stopping_for_update = true
  depends_on    = [google_compute_subnetwork.bastion-internal, google_compute_subnetwork.bastion-internal]
}