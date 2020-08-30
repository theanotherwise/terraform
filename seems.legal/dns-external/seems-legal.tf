module "seems-legal" {
  source = "./seems.legal"

  bastion_name = var.bastion_name
  bastion_address = var.bastion_address

  website_address = var.website_address

  dependencies = [
    "bastion",
    "networking",
    "instances"
  ]
}