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

master_name = "elasticsearch-master"
master_tags = [
  "all",
  "elasticsearch-cluster",
  "elasticsearch-master-node"]
master_count = 3
master_machine_type = "n1-standard-1"
master_network_cidr = "10.0.10.0/24"

voting_only_name = "elasticsearch-voting-only"
voting_only_tags = [
  "all",
  "elasticsearch-cluster",
  "elasticsearch-voting-only-node"]
voting_only_count = 1
voting_only_machine_type = "n1-standard-1"
voting_only_network_cidr = "10.0.11.0/24"

ingest_name = "elasticsearch-ingest"
ingest_tags = [
  "all",
  "elasticsearch-cluster",
  "elasticsearch-ingest-node"]
ingest_count = 3
ingest_machine_type = "n1-standard-1"
ingest_network_cidr = "10.0.12.0/24"

data_name = "elasticsearch-data"
data_tags = [
  "all",
  "elasticsearch-cluster",
  "elasticsearch-data-node"]
data_count = 2
data_machine_type = "n1-standard-1"
data_network_cidr = "10.0.13.0/24"

ml_name = "elasticsearch-ml"
ml_tags = [
  "all",
  "elasticsearch-cluster",
  "elasticsearch-ml-node"]
ml_count = 3
ml_machine_type = "n1-standard-1"
ml_network_cidr = "10.0.14.0/24"

transform_name = "elasticsearch-transform"
transform_tags = [
  "all",
  "elasticsearch-cluster",
  "elasticsearch-transform-node"]
transform_count = 2
transform_machine_type = "n1-standard-1"
transform_network_cidr = "10.0.15.0/24"

coordinating_name = "elasticsearch-coordinating"
coordinating_tags = [
  "all",
  "elasticsearch-cluster",
  "elasticsearch-coordinating-node"]
coordinating_count = 3
coordinating_machine_type = "n1-standard-1"
coordinating_network_cidr = "10.0.16.0/24"

kibana_name = "kibana"
kibana_tags = [
  "all",
  "kibana"]
kibana_count = 1
kibana_machine_type = "n1-standard-1"
kibana_network_cidr = "10.0.17.0/24"

kibana_client_name = "kibana-client"
kibana_client_tags = [
  "all",
  "kibana-client"]
kibana_client_count = 1
kibana_client_machine_type = "n1-standard-1"
kibana_client_network_cidr = "10.0.18.0/24"

logstash_shipper_name = "logstash-shipper"
logstash_shipper_tags = [
  "all",
  "logstash-shipper"]
logstash_shipper_count = 3
logstash_shipper_machine_type = "n1-standard-1"
logstash_shipper_network_cidr = "10.0.19.0/24"

logstash_indexer_name = "logstash-indexer"
logstash_indexer_tags = [
  "all",
  "logstash-indexer"]
logstash_indexer_count = 3
logstash_indexer_machine_type = "n1-standard-1"
logstash_indexer_network_cidr = "10.0.20.0/24"

kafka_name = "kafka"
kafka_tags = [
  "all",
  "kafka"]
kafka_count = 3
kafka_machine_type = "n1-standard-1"
kafka_network_cidr = "10.0.21.0/24"

bastion_name = "bastion"
bastion_tags = [
  "bastion"]
bastion_machine_type = "n1-standard-1"
bastion_network_cidr = "10.0.1.0/24"