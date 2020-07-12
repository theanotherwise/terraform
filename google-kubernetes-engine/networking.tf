module "networking" {
  source = "./networking"

  region = var.region
  zone = var.zone

  network = var.network

  terraform_user = var.terraform_user
  terraform_ssh_keys_pub = var.terraform_ssh_key_pub

  ansible_user = var.ansible_user
  ansible_ssh_keys_pub = var.ansible_ssh_key_pub

  gke_name = var.gke_name
  gke_location = var.gke_location
  gke_network_cidr = var.gke_network_cidr

  bastion_name = var.bastion_name
  bastion_network_cidr = var.bastion_network_cidr
}
