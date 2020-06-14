module "networking" {
  source = "./networking"

  region = var.region
  zone = var.zone

  network = var.network

  ansible_user = var.ansible_user
  ansible_ssh_keys_pub = var.ansible_ssh_key_pub

  terraform_user = var.terraform_user
  terraform_ssh_keys_pub = var.terraform_ssh_key_pub

  master_name = var.master_name
  master_count = var.master_count
  master_tags = var.master_tags
  master_network_cidr = var.master_network_cidr

  voting_only_name = var.voting_only_name
  voting_only_count = var.voting_only_count
  voting_only_tags = var.voting_only_tags
  voting_only_network_cidr = var.voting_only_network_cidr

  ingest_name = var.ingest_name
  ingest_count = var.ingest_count
  ingest_tags = var.ingest_tags
  ingest_network_cidr = var.ingest_network_cidr

  data_name = var.data_name
  data_count = var.data_count
  data_tags = var.data_tags
  data_network_cidr = var.data_network_cidr

  ml_name = var.ml_name
  ml_count = var.ml_count
  ml_tags = var.ml_tags
  ml_network_cidr = var.ml_network_cidr

  transform_name = var.transform_name
  transform_count = var.transform_count
  transform_tags = var.transform_tags
  transform_network_cidr = var.transform_network_cidr

  coordinating_name = var.coordinating_name
  coordinating_count = var.coordinating_count
  coordinating_tags = var.coordinating_tags
  coordinating_network_cidr = var.coordinating_network_cidr

  kibana_name = var.kibana_name
  kibana_count = var.kibana_count
  kibana_tags = var.kibana_tags
  kibana_network_cidr = var.kibana_network_cidr

  kibana_client_name = var.kibana_client_name
  kibana_client_count = var.kibana_client_count
  kibana_client_tags = var.kibana_client_tags
  kibana_client_network_cidr = var.kibana_client_network_cidr

  logstash_shipper_name = var.logstash_shipper_name
  logstash_shipper_count = var.logstash_shipper_count
  logstash_shipper_tags = var.logstash_shipper_tags
  logstash_shipper_network_cidr = var.logstash_shipper_network_cidr

  logstash_indexer_name = var.logstash_indexer_name
  logstash_indexer_count = var.logstash_indexer_count
  logstash_indexer_tags = var.logstash_indexer_tags
  logstash_indexer_network_cidr = var.logstash_indexer_network_cidr

  kafka_name = var.kafka_name
  kafka_count = var.kafka_count
  kafka_tags = var.kafka_tags
  kafka_network_cidr = var.kafka_network_cidr

  bastion_name = var.bastion_name
  bastion_tags = var.bastion_tags
  bastion_network_cidr = var.bastion_network_cidr
}
