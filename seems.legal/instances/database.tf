resource "google_compute_instance" "database" {
  name = var.database_name
  machine_type = var.database_machine_type

  tags = var.database_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = var.database_subnetwork
  }

  allow_stopping_for_update = true

  depends_on = [
    google_compute_instance.application,
    var.dependencies]
}