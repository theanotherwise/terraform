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

frontend_name = "frontend"
frontend_tags = [
  "frontend",
  "all"]
frontend_machine_type = "n1-standard-1"
frontend_network_cidr = "10.0.10.0/24"

application_name = "application"
application_tags = [
  "application",
  "all"]
application_machine_type = "n1-standard-1"
application_network_cidr = "10.0.11.0/24"

database_name = "database"
database_tags = [
  "database",
  "all"]
database_machine_type = "n1-standard-1"
database_network_cidr = "10.0.12.0/24"

redis_name = "redis"
redis_tags = [
  "redis",
  "all"]
redis_machine_type = "n1-standard-1"
redis_network_cidr = "10.0.13.0/24"

bastion_name = "bastion"
bastion_tags = [
"bastion"]
bastion_machine_type = "n1-standard-1"
bastion_network_cidr = "10.0.1.0/24"