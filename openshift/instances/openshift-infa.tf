resource "google_compute_instance" "openshift-infra" {
  name = "${var.openshift_infra_name}-${count.index}"
  machine_type = var.openshift_infra_machine_type
  count = var.openshift_infra_count

  tags = var.openshift_infra_tags

  boot_disk {
    initialize_params {
      image = var.openshift_infra_image

      size = 100
    }
  }
  network_interface {
    subnetwork = var.openshift_infra_subnetwork

    access_config {
      nat_ip = element(var.openshift_infra_addresses, count.index)
    }
  }

  metadata = {
    ssh-keys = var.ansible_ssh_keys_pub
  }

  allow_stopping_for_update = true

  depends_on = [
    var.dependencies]
}