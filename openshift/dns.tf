module "dns" {
  source = "./dns"

  network_id = module.networking.network_id

  openshift_master_count = var.openshift_master_count
  openshift_master_internal_addresses = flatten(module.instances.openshift_master_network_interfaces).*.network_ip

  openshift_compute_count = var.openshift_compute_count
  openshift_compute_internal_addresses = flatten(module.instances.openshift_compute_network_interfaces).*.network_ip

  openshift_infra_count = var.openshift_infra_count
  openshift_infra_internal_addresses = flatten(module.instances.openshift_infra_network_interfaces).*.network_ip

  openshift_lb_count = var.openshift_lb_count
  openshift_lb_internal_addresses = flatten(module.instances.openshift_lb_network_interfaces).*.network_ip

  dependencies = [
    "module.instances"
  ]
}