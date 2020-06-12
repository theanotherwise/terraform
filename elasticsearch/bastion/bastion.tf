resource "google_compute_instance" "bastion" {
  name = var.bastion_name
  machine_type = var.bastion_machine_type

  tags = var.bastion_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = var.provider_subnetwork_name

    access_config {
      nat_ip = var.provider_address
    }
  }

  allow_stopping_for_update = true
}