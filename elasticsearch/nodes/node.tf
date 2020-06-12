resource "google_compute_instance" "data-node" {
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
    user = var.terraform_user
    port = 22
    private_key = var.terraform_ssh_key_file_path

    bastion_host = var.bastion_address
    bastion_user = var.terraform_user
    bastion_port = var.bastion_port
    bastion_private_key = var.terraform_ssh_key_file_path
  }
  provisioner "remote-exec" {
    inline = [
      "sudo touch /etc/sshguard/whitelist",
      "echo \"${var.bastion_address}\" | sudo tee -a /etc/sshguard/whitelist"
    ]
  }
  metadata = {
    ssh-keys = var.ansible_ssh_key_pub
  }

  allow_stopping_for_update = true

  depends_on = [var.dependencies]
}