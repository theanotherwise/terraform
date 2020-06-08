resource "google_compute_instance" "master-node" {
  name = "${local.master_name}${count.index}"
  machine_type = var.master_machine_type
  count = var.master_count

  tags = var.master_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.master.name
    access_config {
      nat_ip = element(google_compute_address.master.*.address, count.index)
    }
  }
  provisioner "remote-exec" {
    inline = [
      "sudo systemctl stop ufw",
      "sudo systemctl disable ufw"]
  }

  allow_stopping_for_update = true
  depends_on = [
    google_compute_subnetwork.master,
    google_compute_address.master,
    google_compute_instance.bastion]
}

resource "google_compute_instance" "voting_only-node" {
  name = "${local.voting_only_name}${count.index}"
  machine_type = var.voting_only_machine_type
  count = var.voting_only_count

  tags = var.voting_only_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.voting-only.name
    access_config {
      nat_ip = element(google_compute_address.voting-only.*.address, count.index)
    }
  }
  provisioner "local-exec" {
    command = <<EndOfMessage
      sudo systemctl stop ufw
      sudo systemctl disable ufw
    EndOfMessage
  }

  allow_stopping_for_update = true
  depends_on = [
    google_compute_subnetwork.voting-only,
    google_compute_address.voting-only,
    google_compute_instance.bastion]
}

resource "google_compute_instance" "ingest-node" {
  name = "${local.ingest_name}${count.index}"
  machine_type = var.ingest_machine_type
  count = var.ingest_count

  tags = var.ingest_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.ingest.name
    access_config {
      nat_ip = element(google_compute_address.ingest.*.address, count.index)
    }
  }
  provisioner "local-exec" {
    command = <<EndOfMessage
      sudo systemctl stop ufw
      sudo systemctl disable ufw
    EndOfMessage
  }

  allow_stopping_for_update = true
  depends_on = [
    google_compute_subnetwork.ingest,
    google_compute_address.ingest,
    google_compute_instance.bastion]
}

resource "google_compute_instance" "data-node" {
  name = "${local.data_name}${count.index}"
  machine_type = var.data_machine_type
  count = var.data_count

  tags = var.data_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.data.name
    access_config {
      nat_ip = element(google_compute_address.data.*.address, count.index)
    }
  }
  provisioner "local-exec" {
    command = <<EndOfMessage
      sudo systemctl stop ufw
      sudo systemctl disable ufw
    EndOfMessage
  }

  allow_stopping_for_update = true
  depends_on = [
    google_compute_subnetwork.data,
    google_compute_address.data,
    google_compute_instance.bastion]
}

resource "google_compute_instance" "ml-node" {
  name = "${local.ml_name}${count.index}"
  machine_type = var.ml_machine_type
  count = var.ml_count

  tags = var.ml_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.ml.name
    access_config {
      nat_ip = element(google_compute_address.ml.*.address, count.index)
    }
  }
  provisioner "local-exec" {
    command = <<EndOfMessage
      sudo systemctl stop ufw
      sudo systemctl disable ufw
    EndOfMessage
  }

  allow_stopping_for_update = true
  depends_on = [
    google_compute_subnetwork.ml,
    google_compute_address.ml,
    google_compute_instance.bastion]
}

resource "google_compute_instance" "transform-node" {
  name = "${local.transform_name}${count.index}"
  machine_type = var.transform_machine_type
  count = var.transform_count

  tags = var.transform_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.transform.name
    access_config {
      nat_ip = element(google_compute_address.transform.*.address, count.index)
    }
  }
  provisioner "local-exec" {
    command = <<EndOfMessage
      sudo systemctl stop ufw
      sudo systemctl disable ufw
    EndOfMessage
  }

  allow_stopping_for_update = true
  depends_on = [
    google_compute_subnetwork.transform,
    google_compute_address.transform,
    google_compute_instance.bastion]
}

resource "google_compute_instance" "coordinating-node" {
  name = "${local.coordinating_name}${count.index}"
  machine_type = var.coordinating_machine_type
  count = var.coordinating_count

  tags = var.coordinating_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.coordinating.name
    access_config {
      nat_ip = element(google_compute_address.coordinating.*.address, count.index)
    }
  }
  provisioner "local-exec" {
    command = <<EndOfMessage
      sudo systemctl stop ufw
      sudo systemctl disable ufw
    EndOfMessage
  }

  allow_stopping_for_update = true
  depends_on = [
    google_compute_subnetwork.coordinating,
    google_compute_address.coordinating,
    google_compute_instance.bastion]
}

resource "google_compute_instance" "kibana" {
  name = "${local.kibana_name}${count.index}"
  machine_type = var.kibana_machine_type
  count = var.kibana_count

  tags = var.kibana_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.kibana.name
    access_config {
      nat_ip = element(google_compute_address.kibana.*.address, count.index)
    }
  }
  provisioner "local-exec" {
    command = <<EndOfMessage
      sudo systemctl stop ufw
      sudo systemctl disable ufw
    EndOfMessage
  }

  allow_stopping_for_update = true
  depends_on = [
    google_compute_subnetwork.kibana,
    google_compute_address.kibana,
    google_compute_instance.bastion]
}

resource "google_compute_instance" "bastion" {
  name = "${local.bastion_name}${count.index}"
  machine_type = var.bastion_machine_type
  count = var.bastion_count

  tags = var.bastion_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.bastion.name
    access_config {
      nat_ip = element(google_compute_address.bastion.*.address, count.index)
    }
  }
  provisioner "local-exec" {
    command = <<EndOfMessage
      sudo systemctl stop ufw
      sudo systemctl disable ufw
    EndOfMessage
  }

  allow_stopping_for_update = true
  depends_on = [
    google_compute_subnetwork.bastion,
    google_compute_address.bastion,
    google_compute_instance.bastion]
}

output "addresses" {
  value = [google_compute_instance.bastion.network_interface.subnetwork]
}