resource "google_compute_instance" "frontend" {
  name = var.frontend_name
  machine_type = var.frontend_machine_type

  tags = var.frontend_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = var.frontend_subnetwork

    access_config {
      nat_ip = var.frontend_address
    }
  }

  allow_stopping_for_update = true

  depends_on = [
    var.dependencies]
}