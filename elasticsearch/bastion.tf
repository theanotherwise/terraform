module "bastion" {
  source = "./bastion"

  image  = var.image

  bastion_name = var.bastion_name
  bastion_tags = var.bastion_tags
  bastion_machine_type = var.bastion_machine_type
  bastion_network_cidr = var.bastion_network_cidr

  provider_address = module.networking.address_bastion_address
  provider_subnetwork_name = module.networking.subnetwork_bastion_name

  dependencies = [
    "module.defaults",
    "module.networking"]
}