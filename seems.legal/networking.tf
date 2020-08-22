module "networking" {
  source = "./networking"

  region = var.region
  zone = var.zone

  network = var.network

  terraform_user = var.terraform_user
  terraform_ssh_keys_pub = var.terraform_ssh_key_pub

  ansible_user = var.ansible_user
  ansible_ssh_keys_pub = var.ansible_ssh_key_pub

  website_name = var.website_name
  website_network_cidr = var.website_network_cidr

  vpn_name = var.vpn_name
  vpn_count = var.vpn_count
  vpn_network_cidr = var.vpn_network_cidr

  bastion_name = var.bastion_name
  bastion_network_cidr = var.bastion_network_cidr
}
