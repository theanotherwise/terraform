resource "google_compute_instance" "transform-node" {
  name = "${local.transform_name}${count.index}"
  machine_type = var.transform_machine_type
  count = var.transform_count

  tags = var.transform_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.transform.name

    access_config {
      nat_ip = element(google_compute_address.transform.*.address, count.index)
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
    google_compute_subnetwork.transform,
    google_compute_address.transform,
    google_compute_instance.bastion]
}