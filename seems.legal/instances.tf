module "instances" {
  source = "./instances"

  image = var.image

  ansible_ssh_key_pub = var.ansible_ssh_key_pub

  website_name = var.website_name
  website_tags = var.website_tags
  website_network_cidr = var.website_network_cidr
  website_machine_type = var.website_machine_type
  website_subnetwork = module.networking.subnetwork_website_name
  website_address = module.networking.address_website_address

  dependencies = [
    "module.defaults",
    "module.networking",
    "module.bastion"]
}