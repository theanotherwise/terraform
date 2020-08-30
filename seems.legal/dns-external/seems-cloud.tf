module "seems-cloud" {
  source = "./seems.cloud"

  dependencies = [
    "bastion",
    "networking",
    "instances"
  ]
}