module "master-nodes" {
  source = "./nodes"

  node_name = var.master_name
  node_machine_type = var.master_machine_type
  node_count = var.master_count
  node_tags = var.master_tags
  node_image = var.image

  provider_address = module.networking.address_master_address
  provider_subnetwork_name = module.networking.subnetwork_master_name

  bastion_address = module.networking.address_bastion_address
  terraform_user = var.terraform_user
  bastion_port = var.bastion_port

  ansible_ssh_key_pub = var.ansible_ssh_key_pub

  terraform_ssh_key_file_path = file("~/configuration/ssh/terraform.id_rsa")

  dependencies = [
    "module.defaults",
    "module.networking",
    "module.bastion"]
}