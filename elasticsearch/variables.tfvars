master_name = "master"
master_tags = [
  "elasticsearch-cluster",
  "master-node"]
master_count = 3
master_machine_type = "n1-standard-4"
master_network_cidr = "10.0.10.0/24"

voting_only_name = "voting-only"
voting_only_tags = [
  "elasticsearch-cluster",
  "voting-only-node"]
voting_only_count = 3
voting_only_machine_type = "n1-standard-2"
voting_only_network_cidr = "10.0.11.0/24"

ingest_name = "ingest"
ingest_tags = [
  "elasticsearch-cluster",
  "ingest-node"]
ingest_count = 3
ingest_machine_type = "n1-standard-2"
ingest_network_cidr = "10.0.12.0/24"

data_name = "data"
data_tags = [
  "elasticsearch-cluster",
  "data-node"]
data_count = 3
data_machine_type = "n1-standard-8"
data_network_cidr = "10.0.13.0/24"

ml_name = "ml"
ml_tags = [
  "elasticsearch-cluster",
  "ml-node"]
ml_count = 3
ml_machine_type = "n1-standard-8"
ml_network_cidr = "10.0.14.0/24"

transform_name = "transform"
transform_tags = [
  "elasticsearch-cluster",
  "transform-node"]
transform_count = 3
transform_machine_type = "n1-standard-2"
transform_network_cidr = "10.0.15.0/24"

coordinating_name = "coordinating"
coordinating_tags = [
  "elasticsearch-cluster",
  "coordinating-node"]
coordinating_count = 3
coordinating_machine_type = "n1-standard-2"
coordinating_network_cidr = "10.0.16.0/24"

kibana_name = "kibana"
kibana_tags = [
  "elasticsearch-cluster",
  "kibana"]
kibana_count = 1
kibana_machine_type = "n1-standard-8"
kibana_network_cidr = "10.0.17.0/24"

bastion_name = "bastion"
bastion_tags = [
  "elasticsearch-cluster",
  "elasticsearch-bastion"]
bastion_count = 1
bastion_machine_type = "n1-standard-1"
bastion_network_cidr = "10.0.1.0/24"
