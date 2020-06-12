region = "us-central1"
zone = "us-central1-a"

image = "ubuntu-os-cloud/ubuntu-1804-lts"

network = "network"

terraform_user = "terraform"
ansible_user = "ansible"

terraform_ssh_keys_pub = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQClIqY2ukU+vVw+ZYMcbRFtmgbpXFL9TV0yr8F7mBnBN/bevqOWpsdn6ePqU0yC9uIcU1sYfRuwPYqgvtnGSfj8WteysOblUuwsU1CGq4s5cunmvFM2dvNMZJILpw/k843Z4uC24pIbVJE7G1FoRrnj9/CN9GhdwaJxN42F8cfOHw==
EndOfMessage

ansible_ssh_keys_pub = <<EndOfMessage
ansible:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQCi8wHVecPaj12wH4gSUoUBs8wP+skNRKvx1N5S7MKFRu8bt4plAKKKS2HzFtOSECsXycQ2q5LVUQCMwWklBYiW9uhAE0g22QPQq/Oseu70q/liUdFIHuRXKC8HI3wRCNKxKvvml0RcMSciSNK5knUbyoGEvB13tQrKTSHiYX+seQ==
EndOfMessage

###############################################################
#                       | |
#    _ __ ___   __ _ ___| |_ ___ _ __
#   | '_ ` _ \ / _` / __| __/ _ \ '__|
#   | | | | | | (_| \__ \ ||  __/ |
#   |_| |_| |_|\__,_|___/\__\___|_|
###############################################################

master_name = "master"
master_tags = [
  "elasticsearch-cluster",
  "master-node"]
master_count = 3
master_machine_type = "n1-standard-1"
master_network_cidr = "10.0.10.0/24"

###############################################################
#              | | (_)                         | |
#   __   _____ | |_ _ _ __   __ _    ___  _ __ | |_   _
#   \ \ / / _ \| __| | '_ \ / _` |  / _ \| '_ \| | | | |
#    \ V / (_) | |_| | | | | (_| | | (_) | | | | | |_| |
#     \_/ \___/ \__|_|_| |_|\__, |  \___/|_| |_|_|\__, |
#                            __/ |                 __/ |
#                           |___/                 |___/
###############################################################

voting_only_name = "voting-only"
voting_only_tags = [
  "elasticsearch-cluster",
  "voting-only-node"]
voting_only_count = 3
voting_only_machine_type = "n1-standard-1"
voting_only_network_cidr = "10.0.11.0/24"

###############################################################
#   (_)                     | |
#    _ _ __   __ _  ___  ___| |_
#   | | '_ \ / _` |/ _ \/ __| __|
#   | | | | | (_| |  __/\__ \ |_
#   |_|_| |_|\__, |\___||___/\__|
#             __/ |
#            |___/
###############################################################

ingest_name = "ingest"
ingest_tags = [
  "elasticsearch-cluster",
  "ingest-node"]
ingest_count = 3
ingest_machine_type = "n1-standard-1"
ingest_network_cidr = "10.0.12.0/24"

###############################################################
#       | |     | |
#     __| | __ _| |_ __ _
#    / _` |/ _` | __/ _` |
#   | (_| | (_| | || (_| |
#    \__,_|\__,_|\__\__,_|
###############################################################

data_name = "data"
data_tags = [
  "elasticsearch-cluster",
  "data-node"]
data_count = 4
data_machine_type = "n1-standard-1"
data_network_cidr = "10.0.13.0/24"

###############################################################
#             | |
#    _ __ ___ | |
#   | '_ ` _ \| |
#   | | | | | | |
#   |_| |_| |_|_|
###############################################################

ml_name = "ml"
ml_tags = [
  "elasticsearch-cluster",
  "ml-node"]
ml_count = 3
ml_machine_type = "n1-standard-1"
ml_network_cidr = "10.0.14.0/24"

###############################################################
#   | |                      / _|
#   | |_ _ __ __ _ _ __  ___| |_ ___  _ __ _ __ ___
#   | __| '__/ _` | '_ \/ __|  _/ _ \| '__| '_ ` _ \
#   | |_| | | (_| | | | \__ \ || (_) | |  | | | | | |
#    \__|_|  \__,_|_| |_|___/_| \___/|_|  |_| |_| |_|
###############################################################

transform_name = "transform"
transform_tags = [
  "elasticsearch-cluster",
  "transform-node"]
transform_count = 3
transform_machine_type = "n1-standard-1"
transform_network_cidr = "10.0.15.0/24"

###############################################################
#                           | (_)           | | (_)
#     ___ ___   ___  _ __ __| |_ _ __   __ _| |_ _ _ __   __ _
#    / __/ _ \ / _ \| '__/ _` | | '_ \ / _` | __| | '_ \ / _` |
#   | (_| (_) | (_) | | | (_| | | | | | (_| | |_| | | | | (_| |
#    \___\___/ \___/|_|  \__,_|_|_| |_|\__,_|\__|_|_| |_|\__, |
#                                                         __/ |
#                                                        |___/
###############################################################

coordinating_name = "coordinating"
coordinating_tags = [
  "elasticsearch-cluster",
  "coordinating-node"]
coordinating_count = 3
coordinating_machine_type = "n1-standard-1"
coordinating_network_cidr = "10.0.16.0/24"

###############################################################
#    _    _ _
#   | |  (_) |
#   | | ___| |__   __ _ _ __   __ _
#   | |/ / | '_ \ / _` | '_ \ / _` |
#   |   <| | |_) | (_| | | | | (_| |
#   |_|\_\_|_.__/ \__,_|_| |_|\__,_|
###############################################################

kibana_name = "kibana"
kibana_tags = [
  "elasticsearch-cluster",
  "kibana"]
kibana_count = 1
kibana_machine_type = "n1-standard-1"
kibana_network_cidr = "10.0.17.0/24"

###############################################################
#   | |             | | (_)
#   | |__   __ _ ___| |_ _  ___  _ __
#   | '_ \ / _` / __| __| |/ _ \| '_ \
#   | |_) | (_| \__ \ |_| | (_) | | | |
#   |_.__/ \__,_|___/\__|_|\___/|_| |_|
###############################################################

bastion_name = "bastion"
bastion_tags = [
  "elasticsearch-cluster",
  "elasticsearch-bastion"]
bastion_machine_type = "n1-standard-1"
bastion_network_cidr = "10.0.1.0/24"
