module "dns" {
  source = "./dns"

  network_id = module.networking.network_id
}