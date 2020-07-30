module "instances" {
  source = "./instances"

  image = var.image

  ansible_ssh_keys_pub = var.ansible_ssh_key_pub

  openshift_master_name = var.openshift_master_name
  openshift_master_image = var.openshift_master_image
  openshift_master_count = var.openshift_master_count
  openshift_master_tags = var.openshift_master_tags
  openshift_master_network_cidr = var.openshift_master_network_cidr
  openshift_master_machine_type = var.openshift_master_machine_type
  openshift_master_subnetwork = module.networking.openshift_master_subnetwork_name
  openshift_master_addresses = module.networking.openshift_master_addresses

  openshift_compute_name = var.openshift_compute_name
  openshift_compute_image = var.openshift_compute_image
  openshift_compute_count = var.openshift_compute_count
  openshift_compute_tags = var.openshift_compute_tags
  openshift_compute_network_cidr = var.openshift_compute_network_cidr
  openshift_compute_machine_type = var.openshift_compute_machine_type
  openshift_compute_subnetwork = module.networking.openshift_compute_subnetwork_name
  openshift_compute_addresses = module.networking.openshift_compute_addresses

  openshift_infra_name = var.openshift_infra_name
  openshift_infra_image = var.openshift_infra_image
  openshift_infra_count = var.openshift_infra_count
  openshift_infra_tags = var.openshift_infra_tags
  openshift_infra_network_cidr = var.openshift_infra_network_cidr
  openshift_infra_machine_type = var.openshift_infra_machine_type
  openshift_infra_subnetwork = module.networking.openshift_infra_subnetwork_name
  openshift_infra_addresses = module.networking.openshift_infra_addresses

  openshift_lb_name = var.openshift_lb_name
  openshift_lb_image = var.openshift_lb_image
  openshift_lb_count = var.openshift_lb_count
  openshift_lb_tags = var.openshift_lb_tags
  openshift_lb_network_cidr = var.openshift_lb_network_cidr
  openshift_lb_machine_type = var.openshift_lb_machine_type
  openshift_lb_subnetwork = module.networking.openshift_lb_subnetwork_name
  openshift_lb_addresses = module.networking.openshift_lb_addresses

  dependencies = [
    "module.defaults",
    "module.networking",
    "module.bastion"]
}
