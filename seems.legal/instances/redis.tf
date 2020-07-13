resource "google_compute_instance" "redis" {
  name = var.redis_name
  machine_type = var.redis_machine_type

  tags = var.redis_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = var.redis_subnetwork
  }

  allow_stopping_for_update = true

  depends_on = [
    google_compute_instance.application,
    var.dependencies]
}