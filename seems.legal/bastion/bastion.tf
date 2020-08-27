resource "google_compute_instance" "bastion" {
  name = var.bastion_name
  machine_type = var.bastion_machine_type

  tags = concat(var.bastion_tags, ["all"])

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

  metadata = {
    ssh-keys = var.terraform_ssh_key_pub
  }

  allow_stopping_for_update = true

  depends_on = [
    var.dependencies]
}