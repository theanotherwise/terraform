module "master-nodes" {
  source = "./nodes"

  node_name = var.master_name
  node_machine_type = var.master_machine_type
  node_count = var.master_count
  node_tags = var.master_tags
  node_image = var.image

  terraform_user = var.terraform_user
  bastion_address = module.networking.subnetwork_master_name

  ansible_ssh_keys_pub = var.ansible_ssh_keys_pub

  gcp_address = google_compute_address.master.*.address
  gcp_subnetwork = google_compute_subnetwork.master.name

  dependencies = [module.networking]
}

module "voting-only-nodes" {
  source = "./nodes"

  node_name = var.voting_only_name
  node_machine_type = var.voting_only_machine_type
  node_count = var.voting_only_count
  node_tags = var.voting_only_tags
  node_image = var.image

  terraform_user = var.terraform_user
  bastion_address = google_compute_address.bastion.address

  ansible_ssh_keys_pub = var.ansible_ssh_keys_pub

  gcp_address = google_compute_address.voting-only.*.address
  gcp_subnetwork = google_compute_subnetwork.voting-only.name

  dependencies = [
    "google_compute_subnetwork.voting-only",
    "google_compute_address.voting-only",
    "google_compute_instance.bastion"]
}

module "ingest-nodes" {
  source = "./nodes"

  node_name = var.ingest_name
  node_machine_type = var.ingest_machine_type
  node_count = var.ingest_count
  node_tags = var.ingest_tags
  node_image = var.image

  terraform_user = var.terraform_user
  bastion_address = google_compute_address.bastion.address

  ansible_ssh_keys_pub = var.ansible_ssh_keys_pub

  gcp_address = google_compute_address.ingest.*.address
  gcp_subnetwork = google_compute_subnetwork.ingest.name

  dependencies = [
    "google_compute_subnetwork.ingest",
    "google_compute_address.ingest",
    "google_compute_instance.bastion"]
}

module "data-nodes" {
  source = "./nodes"

  node_name = var.data_name
  node_machine_type = var.data_machine_type
  node_count = var.data_count
  node_tags = var.data_tags
  node_image = var.image

  terraform_user = var.terraform_user
  bastion_address = google_compute_address.bastion.address

  ansible_ssh_keys_pub = var.ansible_ssh_keys_pub

  gcp_address = google_compute_address.data.*.address
  gcp_subnetwork = google_compute_subnetwork.data.name

  dependencies = [
    "google_compute_subnetwork.data",
    "google_compute_address.data",
    "google_compute_instance.bastion"]
}

module "ml-nodes" {
  source = "./nodes"

  node_name = var.ml_name
  node_machine_type = var.ml_machine_type
  node_count = var.ml_count
  node_tags = var.ml_tags
  node_image = var.image

  terraform_user = var.terraform_user
  bastion_address = google_compute_address.bastion.address

  ansible_ssh_keys_pub = var.ansible_ssh_keys_pub

  gcp_address = google_compute_address.ml.*.address
  gcp_subnetwork = google_compute_subnetwork.ml.name

  dependencies = [
    "google_compute_subnetwork.ml",
    "google_compute_address.ml",
    "google_compute_instance.bastion"]
}

module "transform-nodes" {
  source = "./nodes"

  node_name = var.transform_name
  node_machine_type = var.transform_machine_type
  node_count = var.transform_count
  node_tags = var.transform_tags
  node_image = var.image

  terraform_user = var.terraform_user
  bastion_address = google_compute_address.bastion.address

  ansible_ssh_keys_pub = var.ansible_ssh_keys_pub

  gcp_address = google_compute_address.transform.*.address
  gcp_subnetwork = google_compute_subnetwork.transform.name

  dependencies = [
    "google_compute_subnetwork.transform",
    "google_compute_address.transform",
    "google_compute_instance.bastion"]
}

module "coordinating-nodes" {
  source = "./nodes"

  node_name = var.coordinating_name
  node_machine_type = var.coordinating_machine_type
  node_count = var.coordinating_count
  node_tags = var.coordinating_tags
  node_image = var.image

  terraform_user = var.terraform_user
  bastion_address = google_compute_address.bastion.address

  ansible_ssh_keys_pub = var.ansible_ssh_keys_pub

  gcp_address = google_compute_address.coordinating.*.address
  gcp_subnetwork = google_compute_subnetwork.coordinating.name

  dependencies = [
    "google_compute_subnetwork.coordinating",
    "google_compute_address.coordinating",
    "google_compute_instance.bastion"]
}