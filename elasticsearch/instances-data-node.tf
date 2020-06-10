resource "google_compute_instance" "data-node" {
  name = "${local.data_name}${count.index}"
  machine_type = var.data_machine_type
  count = var.data_count

  tags = var.data_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.data.name

    access_config {
      nat_ip = element(google_compute_address.data.*.address, count.index)
    }
  }
  connection {
    type = "ssh"
    host = self.network_interface[0].network_ip
    user = var.terraform_user
    port = 22
    private_key = file("~/configuration/ssh/terraform.id_rsa")

    bastion_host = "${google_compute_address.bastion.address}"
    bastion_user = var.terraform_user
    bastion_port = 22
    bastion_private_key = file("~/configuration/ssh/terraform.id_rsa")
  }
  provisioner "remote-exec" {
    inline = [
      "sudo touch /etc/sshguard/whitelist",
      "echo \"${google_compute_address.bastion.address}\" | sudo tee -a /etc/sshguard/whitelist"
    ]
  }
  metadata = {
    ssh-keys = var.ansible_ssh_keys_pub
  }

  allow_stopping_for_update = true

  depends_on = [
    google_compute_subnetwork.data,
    google_compute_address.data,
    google_compute_instance.bastion]
}