module "master-node" {
  source = "./instances"

  node_name = var.master_name
  node_machine_type = var.master_machine_type
  node_count = var.master_count
  node_tags = var.master_tags
  node_image = var.image

  provider_address = module.networking.address_master_address
  provider_subnetwork_name = module.networking.subnetwork_master_name

  bastion_internal_address = module.bastion.bastion_internal_address
  bastion_external_address = module.bastion.bastion_external_address

  ansible_ssh_key_pub = var.ansible_ssh_key_pub

  dependencies = [
    "module.defaults",
    "module.networking",
    "module.bastion"]
}

//module "voting-only-node" {
//  source = "./instances"
//
//  node_name = var.voting_only_name
//  node_machine_type = var.voting_only_machine_type
//  node_count = var.voting_only_count
//  node_tags = var.voting_only_tags
//  node_image = var.image
//
//  provider_address = module.networking.address_voting_only_address
//  provider_subnetwork_name = module.networking.subnetwork_voting_only_name
//
//  bastion_internal_address = module.bastion.bastion_internal_address
//  bastion_external_address = module.bastion.bastion_external_address
//
//  ansible_ssh_key_pub = var.ansible_ssh_key_pub
//
//  dependencies = [
//    "module.defaults",
//    "module.networking",
//    "module.bastion"]
//}
//
//module "ingest-node" {
//  source = "./instances"
//
//  node_name = var.ingest_name
//  node_machine_type = var.ingest_machine_type
//  node_count = var.ingest_count
//  node_tags = var.ingest_tags
//  node_image = var.image
//
//  provider_address = module.networking.address_ingest_address
//  provider_subnetwork_name = module.networking.subnetwork_ingest_name
//
//  bastion_internal_address = module.bastion.bastion_internal_address
//  bastion_external_address = module.bastion.bastion_external_address
//
//  ansible_ssh_key_pub = var.ansible_ssh_key_pub
//
//  dependencies = [
//    "module.defaults",
//    "module.networking",
//    "module.bastion"]
//}
//
//module "data-node" {
//  source = "./instances"
//
//  node_name = var.data_name
//  node_machine_type = var.data_machine_type
//  node_count = var.data_count
//  node_tags = var.data_tags
//  node_image = var.image
//
//  provider_address = module.networking.address_data_address
//  provider_subnetwork_name = module.networking.subnetwork_data_name
//
//  bastion_internal_address = module.bastion.bastion_internal_address
//  bastion_external_address = module.bastion.bastion_external_address
//
//  ansible_ssh_key_pub = var.ansible_ssh_key_pub
//
//  dependencies = [
//    "module.defaults",
//    "module.networking",
//    "module.bastion"]
//}
//
//module "ml-node" {
//  source = "./instances"
//
//  node_name = var.ml_name
//  node_machine_type = var.ml_machine_type
//  node_count = var.ml_count
//  node_tags = var.ml_tags
//  node_image = var.image
//
//  provider_address = module.networking.address_ml_address
//  provider_subnetwork_name = module.networking.subnetwork_ml_name
//
//  bastion_internal_address = module.bastion.bastion_internal_address
//  bastion_external_address = module.bastion.bastion_external_address
//
//  ansible_ssh_key_pub = var.ansible_ssh_key_pub
//
//  dependencies = [
//    "module.defaults",
//    "module.networking",
//    "module.bastion"]
//}
//
//module "transform-node" {
//  source = "./instances"
//
//  node_name = var.transform_name
//  node_machine_type = var.transform_machine_type
//  node_count = var.transform_count
//  node_tags = var.transform_tags
//  node_image = var.image
//
//  provider_address = module.networking.address_transform_address
//  provider_subnetwork_name = module.networking.subnetwork_transform_name
//
//  bastion_internal_address = module.bastion.bastion_internal_address
//  bastion_external_address = module.bastion.bastion_external_address
//
//  ansible_ssh_key_pub = var.ansible_ssh_key_pub
//
//  dependencies = [
//    "module.defaults",
//    "module.networking",
//    "module.bastion"]
//}
//
//module "coordinating-node" {
//  source = "./instances"
//
//  node_name = var.coordinating_name
//  node_machine_type = var.coordinating_machine_type
//  node_count = var.coordinating_count
//  node_tags = var.coordinating_tags
//  node_image = var.image
//
//  provider_address = module.networking.address_coordinating_address
//  provider_subnetwork_name = module.networking.subnetwork_coordinating_name
//
//  bastion_internal_address = module.bastion.bastion_internal_address
//  bastion_external_address = module.bastion.bastion_external_address
//
//  ansible_ssh_key_pub = var.ansible_ssh_key_pub
//
//  dependencies = [
//    "module.defaults",
//    "module.networking",
//    "module.bastion"]
//}

module "kibana" {
  source = "./instances"

  node_name = var.kibana_name
  node_machine_type = var.kibana_machine_type
  node_count = var.kibana_count
  node_tags = var.kibana_tags
  node_image = var.image

  provider_address = module.networking.address_kibana_address
  provider_subnetwork_name = module.networking.subnetwork_kibana_name

  bastion_internal_address = module.bastion.bastion_internal_address
  bastion_external_address = module.bastion.bastion_external_address

  ansible_ssh_key_pub = var.ansible_ssh_key_pub

  dependencies = [
    "module.defaults",
    "module.networking",
    "module.bastion"]
}

module "client" {
  source = "./instances"

  node_name = var.kibana_name
  node_machine_type = var.kibana_machine_type
  node_count = var.kibana_count
  node_tags = var.kibana_tags
  node_image = var.image

  provider_address = module.networking.address_kibana_address
  provider_subnetwork_name = module.networking.subnetwork_kibana_name

  bastion_internal_address = module.bastion.bastion_internal_address
  bastion_external_address = module.bastion.bastion_external_address

  ansible_ssh_key_pub = var.ansible_ssh_key_pub

  dependencies = [
    "module.defaults",
    "module.networking",
    "module.bastion"]
}