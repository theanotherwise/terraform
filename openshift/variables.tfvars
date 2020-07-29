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

bastion_name = "bastion"
bastion_tags = [
  "bastion"]
bastion_machine_type = "n1-standard-4"
bastion_network_cidr = "10.0.1.0/24"

openshift_master_name = "openshift-master"
openshift_master_image = "centos-cloud/centos-7"
openshift_master_count = 1
openshift_master_tags = [
  "openshift",
  "openshift-master",
  "all"]
openshift_master_machine_type = "n1-standard-8"
openshift_master_network_cidr = "10.0.10.0/24"

openshift_compute_name = "openshift-compute"
openshift_compute_image = "centos-cloud/centos-7"
openshift_compute_count = 1
openshift_compute_tags = [
  "openshift",
  "openshift-compute",
  "all"]
openshift_compute_machine_type = "n1-standard-8"
openshift_compute_network_cidr = "10.0.11.0/24"

openshift_infra_name = "openshift-infra"
openshift_infra_image = "centos-cloud/centos-7"
openshift_infra_count = 1
openshift_infra_tags = [
  "openshift",
  "openshift-infra",
  "all"]
openshift_infra_machine_type = "n1-standard-8"
openshift_infra_network_cidr = "10.0.12.0/24"

openshift_lb_name = "openshift-lb"
openshift_lb_image = "centos-cloud/centos-7"
openshift_lb_count = 1
openshift_lb_tags = [
  "openshift",
  "openshift-lb",
  "all"]
openshift_lb_machine_type = "n1-standard-8"
openshift_lb_network_cidr = "10.0.13.0/24"