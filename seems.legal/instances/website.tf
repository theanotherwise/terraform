resource "google_compute_instance" "website" {
  name = var.website_name
  machine_type = var.website_machine_type

  tags = concat(var.website_tags, ["all"])

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = var.website_subnetwork

    access_config {
      nat_ip = var.website_address
    }
  }

  metadata = {
    ssh-keys = var.ansible_ssh_key_pub
  }

  allow_stopping_for_update = true

  depends_on = [
    var.dependencies]
}