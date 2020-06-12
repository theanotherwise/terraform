resource "google_compute_instance" "instance" {
  name = "${var.node_name}${count.index}"
  machine_type = var.node_machine_type
  count = var.node_count

  tags = var.node_tags

  boot_disk {
    initialize_params {
      image = var.node_image
    }
  }
  network_interface {
    subnetwork = var.provider_subnetwork_name

    access_config {
      nat_ip = element(var.provider_address, count.index)
    }
  }
  connection {
    type = "ssh"
    host = self.network_interface[0].network_ip
    user = "terraform"
    port = 22
    private_key = file("~/configuration/ssh/terraform.id_rsa")

    bastion_host = var.bastion_external_address
    bastion_user = "terraform"
    bastion_port = 22
    bastion_private_key = file("~/configuration/ssh/terraform.id_rsa")
  }
  provisioner "remote-exec" {
    inline = [
      "sudo touch /etc/sshguard/whitelist",
      "echo \"${var.bastion_internal_address}\" | sudo tee -a /etc/sshguard/whitelist"
    ]
  }
  metadata = {
    ssh-keys = var.ansible_ssh_key_pub
  }

  allow_stopping_for_update = true

  depends_on = [var.dependencies]
}

