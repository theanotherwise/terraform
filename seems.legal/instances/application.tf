resource "google_compute_instance" "application" {
  name = var.application_name
  machine_type = var.application_machine_type

  tags = var.application_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = var.application_subnetwork
  }

  allow_stopping_for_update = true

  depends_on = [
    google_compute_instance.frontend,
    var.dependencies]
}