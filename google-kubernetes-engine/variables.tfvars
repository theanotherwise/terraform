region = "us-central1"

terraform_user = "terraform"
terraform_ssh_key_pub = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQClIqY2ukU+vVw+ZYMcbRFtmgbpXFL9TV0yr8F7mBnBN/bevqOWpsdn6ePqU0yC9uIcU1sYfRuwPYqgvtnGSfj8WteysOblUuwsU1CGq4s5cunmvFM2dvNMZJILpw/k843Z4uC24pIbVJE7G1FoRrnj9/CN9GhdwaJxN42F8cfOHw==
EndOfMessage

ansible_user = "ansible"
ansible_ssh_key_pub = <<EndOfMessage
ansible:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQCi8wHVecPaj12wH4gSUoUBs8wP+skNRKvx1N5S7MKFRu8bt4plAKKKS2HzFtOSECsXycQ2q5LVUQCMwWklBYiW9uhAE0g22QPQq/Oseu70q/liUdFIHuRXKC8HI3wRCNKxKvvml0RcMSciSNK5knUbyoGEvB13tQrKTSHiYX+seQ==
EndOfMessage

network = "network"

gke_cluster_name = "regional-cluster"
gke_cluster_tags = [
  "gke",
  "all"]
gke_cluster_region = "us-central1"
gke_cluster_zones = [
  "us-central1-a",
  //  "us-central1-b",
  //  "us-central1-c",
  //  "us-central1-f"
]
gke_cluster_network_cidr = "10.0.10.0/24"
gke_cluster_machine_type = "n1-standard-1"
gke_cluster_min_master_version = "1.16.13-gke.1"
gke_cluster_init_nodes = 1 # will be removed after cluster created

gke_normal_pool_name = "normal-pool"
gke_normal_pool_tags = [
  "gke",
  "all"]
gke_normal_pool_region = "us-central1"
gke_normal_pool_zones = [
  "us-central1-a",
  //  "us-central1-b",
  //  "us-central1-c",
  //  "us-central1-f"
]
gke_normal_pool_machine_type = "n1-standard-8"
gke_normal_pool_network_cidr = "10.0.11.0/24"
gke_normal_pool_init_nodes = 2
gke_normal_pool_mix_nodes_nodes = 2
gke_normal_pool_max_nodes_nodes = 2

bastion_name = "bastion"
bastion_tags = [
  "bastion"]
bastion_region = "us-central1"
bastion_zone = "us-central1-a"
bastion_machine_type = "n1-standard-2"
bastion_image = "ubuntu-os-cloud/ubuntu-1804-lts"
bastion_network_cidr = "10.0.1.0/24"