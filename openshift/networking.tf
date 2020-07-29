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

  openshift_master_name = var.openshift_master_name
  openshift_master_count = var.openshift_master_count
  openshift_master_network_cidr = var.openshift_master_network_cidr

  openshift_compute_name = var.openshift_compute_name
  openshift_compute_count = var.openshift_compute_count
  openshift_compute_network_cidr = var.openshift_compute_network_cidr

  openshift_infra_name = var.openshift_infra_name
  openshift_infra_count = var.openshift_infra_count
  openshift_infra_network_cidr = var.openshift_infra_network_cidr

  openshift_lb_name = var.openshift_lb_name
  openshift_lb_count = var.openshift_lb_count
  openshift_lb_network_cidr = var.openshift_lb_network_cidr
}