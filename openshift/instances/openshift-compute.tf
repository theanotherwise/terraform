resource "google_compute_instance" "openshift-compute" {
  name = "${var.openshift_compute_name}-${count.index}"
  machine_type = var.openshift_compute_machine_type
  count = var.openshift_compute_count

  tags = var.openshift_compute_tags

  boot_disk {
    initialize_params {
      image = var.openshift_compute_image

      size = 100
    }
  }
  network_interface {
    subnetwork = var.openshift_compute_subnetwork

    access_config {
      nat_ip = element(var.openshift_compute_addresses, count.index)
    }
  }

  metadata = {
    ssh-keys = var.ansible_ssh_keys_pub
  }

  allow_stopping_for_update = true

  depends_on = [
    var.dependencies]
}