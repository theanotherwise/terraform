module "networking" {
  source = "./networking"

  region = var.region
  zone = var.zone

  network = var.network

  terraform_user = var.terraform_user
  terraform_ssh_keys_pub = var.terraform_ssh_key_pub

  ansible_user = var.ansible_user
  ansible_ssh_keys_pub = var.ansible_ssh_key_pub
  
  bastion_name = var.bastion_name
  bastion_network_cidr = var.bastion_network_cidr

  frontend_name = var.frontend_name
  frontend_network_cidr = var.frontend_network_cidr

  application_name = var.application_name
  application_network_cidr = var.application_network_cidr

  database_name = var.database_name
  database_network_cidr = var.database_network_cidr

  redis_name = var.redis_name
  redis_network_cidr = var.redis_network_cidr
}
