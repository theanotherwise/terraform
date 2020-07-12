module "gke" {
  source = "./gke"

  network_name = var.network
  subnetwork_name = module.networking.subnetwork_gke_cluster_name

  gke_name = var.gke_name
  gke_tags = var.gke_tags
  gke_location = var.gke_location
  gke_machine_type = var.gke_machine_type
  gke_network_cidr = var.gke_network_cidr

  dependencies = [
    "module.networking",
    "module.bastion"]
}