module "networking" {
  source = "./networking"

  network = var.network

  terraform_user = var.terraform_user
  terraform_ssh_keys_pub = var.terraform_ssh_key_pub

  ansible_user = var.ansible_user
  ansible_ssh_keys_pub = var.ansible_ssh_key_pub

  gke_cluster_name = var.gke_cluster_name
  gke_cluster_region = var.gke_cluster_region
  gke_cluster_network_cidr = var.gke_cluster_network_cidr

  gke_normal_pool_name = var.gke_normal_pool_name
  gke_normal_pool_region = var.gke_normal_pool_region
  gke_normal_pool_network_cidr = var.gke_normal_pool_network_cidr

  bastion_name = var.bastion_name
  bastion_region = var.bastion_region
  bastion_zone = var.bastion_zone
  bastion_network_cidr = var.bastion_network_cidr
}
