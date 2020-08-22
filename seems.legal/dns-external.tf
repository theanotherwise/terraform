module "dns-external" {
  source = "./dns-external"

  bastion_name = var.bastion_name
  bastion_address = module.networking.address_bastion_address

  website_address = module.networking.address_website_address

  dependencies = [
    "bastion",
    "networking",
    "instances"
  ]
}