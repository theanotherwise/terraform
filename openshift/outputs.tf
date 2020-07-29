output "bastion_external_address" {
  value = module.bastion.bastion_external_address
}

output "openshift_master_nodes" {
  value = module.instances.openshift_master_nodes_names
}

output "openshift_compute_nodes" {
  value = module.instances.openshift_compute_nodes_names
}

output "openshift_infra_nodes" {
  value = module.instances.openshift_infra_nodes_names
}

output "openshift_lb_nodes" {
  value = module.instances.openshift_lb_nodes_names
}