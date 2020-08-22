module "dns-internal" {
  source = "./dns-internal"

  network_id = module.networking.network_id

  bastion_name = var.bastion_name
  bastion_address = module.bastion.bastion_internal_address

  website_address = module.instances.website_internal_address

  dependencies = [
    "bastion",
    "networking",
    "instances"
  ]
}