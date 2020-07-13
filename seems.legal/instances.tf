module "instances" {
  source = "./instances"

  image = var.image

  frontend_name = var.frontend_name
  frontend_tags = var.frontend_tags
  frontend_network_cidr = var.frontend_network_cidr
  frontend_machine_type = var.frontend_machine_type
  frontend_subnetwork = module.networking.subnetwork_frontend_name
  frontend_address = module.networking.address_frontend_address

  application_name = var.application_name
  application_tags = var.application_tags
  application_network_cidr = var.application_network_cidr
  application_machine_type = var.application_machine_type
  application_subnetwork = module.networking.subnetwork_application_name

  database_name = var.database_name
  database_tags = var.database_tags
  database_network_cidr = var.database_network_cidr
  database_machine_type = var.database_machine_type
  database_subnetwork = module.networking.subnetwork_database_name

  redis_name = var.redis_name
  redis_tags = var.redis_tags
  redis_network_cidr = var.redis_network_cidr
  redis_machine_type = var.redis_machine_type
  redis_subnetwork = module.networking.subnetwork_redis_name

  dependencies = [
    "module.defaults",
    "module.networking",
    "module.bastion"]
}