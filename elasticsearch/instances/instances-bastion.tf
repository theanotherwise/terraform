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
    subnetwork = google_compute_subnetwork.bastion.name

    access_config {
      nat_ip = google_compute_address.bastion.address
    }
  }

  allow_stopping_for_update = true
  depends_on = [
    google_compute_subnetwork.bastion,
    google_compute_address.bastion,]
}