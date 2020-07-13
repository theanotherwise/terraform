module "defaults" {
  source = "./defaults"

  terraform_ssh_keys_pub = var.terraform_ssh_key_pub
}
