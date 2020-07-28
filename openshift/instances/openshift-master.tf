resource "google_compute_instance" "openshift-master" {
  name = "${var.openshift_master_name}-${count.index}"
  machine_type = var.openshift_master_machine_type
  count = var.openshift_master_count

  tags = var.openshift_master_tags

  boot_disk {
    initialize_params {
      image = var.openshift_master_image

      size = 100
    }
  }
  network_interface {
    subnetwork = var.openshift_master_subnetwork

    access_config {
      nat_ip = element(var.openshift_master_addresses, count.index)
    }
  }

  metadata = {
    ssh-keys = var.ansible_ssh_keys_pub
  }

  allow_stopping_for_update = true

  depends_on = [
    var.dependencies]
}