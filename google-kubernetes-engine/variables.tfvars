region = "us-central1"
zone = "us-central1-a"

image = "ubuntu-os-cloud/ubuntu-1804-lts"

network = "network"

terraform_user = "terraform"
terraform_ssh_key_pub = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQClIqY2ukU+vVw+ZYMcbRFtmgbpXFL9TV0yr8F7mBnBN/bevqOWpsdn6ePqU0yC9uIcU1sYfRuwPYqgvtnGSfj8WteysOblUuwsU1CGq4s5cunmvFM2dvNMZJILpw/k843Z4uC24pIbVJE7G1FoRrnj9/CN9GhdwaJxN42F8cfOHw==
EndOfMessage

ansible_user = "ansible"
ansible_ssh_key_pub = <<EndOfMessage
ansible:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQCi8wHVecPaj12wH4gSUoUBs8wP+skNRKvx1N5S7MKFRu8bt4plAKKKS2HzFtOSECsXycQ2q5LVUQCMwWklBYiW9uhAE0g22QPQq/Oseu70q/liUdFIHuRXKC8HI3wRCNKxKvvml0RcMSciSNK5knUbyoGEvB13tQrKTSHiYX+seQ==
EndOfMessage

gke_name = "example"
gke_tags = [
  "gke",
  "all",]
gke_location = "us-central1-c"
gke_machine_type = "n1-standard-4"
gke_network_cidr = "10.0.10.0/24"

gke_cluster_init_nodes = 1
gke_cluster_min_master_version = "1.16.13-gke.1"
gke_pool_init_nodes = 2 # be sure if really want change this value
gke_pool_mix_nodes_nodes = 2
gke_pool_max_nodes_nodes = 3

bastion_name = "bastion"
bastion_tags = [
  "bastion"]
bastion_machine_type = "n1-standard-8"
bastion_network_cidr = "10.0.1.0/24"