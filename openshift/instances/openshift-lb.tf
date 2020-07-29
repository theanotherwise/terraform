resource "google_compute_instance" "openshift-lb" {
  name = "${var.openshift_lb_name}-${count.index}"
  machine_type = var.openshift_lb_machine_type
  count = var.openshift_lb_count

  tags = var.openshift_lb_tags

  boot_disk {
    initialize_params {
      image = var.openshift_lb_image

      size = 100
    }
  }
  network_interface {
    subnetwork = var.openshift_lb_subnetwork

    access_config {
      nat_ip = element(var.openshift_lb_addresses, count.index)
    }
  }

  metadata = {
    ssh-keys = var.ansible_ssh_keys_pub
  }

  allow_stopping_for_update = true

  depends_on = [
    var.dependencies]
}