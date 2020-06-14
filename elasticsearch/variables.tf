variable "region" {
    type = string
}

variable "zone" {
    type = string
}

variable "image" {
    type = string
}

variable "network" {
    type = string
}

variable "terraform_port" {
    type = string
}

variable "terraform_user" {
    type = string
}

variable "terraform_ssh_key_pub" {
    type = string
}

variable "ansible_user" {
    type = string
}

variable "ansible_ssh_key_pub" {
    type = string
}

variable "master_name" {
    type = string
}

variable "master_tags" {
    type = list(string)
}

variable "master_count" {
    type = number
}

variable "master_network_cidr" {
    type = string
}

variable "master_machine_type" {
    type = string
}

variable "voting_only_name" {
    type = string
}

variable "voting_only_tags" {
    type = list(string)
}

variable "voting_only_count" {
    type = number
}

variable "voting_only_network_cidr" {
    type = string
}

variable "voting_only_machine_type" {
    type = string
}

variable "ingest_name" {
    type = string
}

variable "ingest_tags" {
    type = list(string)
}

variable "ingest_count" {
    type = number
}

variable "ingest_network_cidr" {
    type = string
}

variable "ingest_machine_type" {
    type = string
}

variable "data_name" {
    type = string
}

variable "data_tags" {
    type = list(string)
}

variable "data_count" {
    type = number
}

variable "data_network_cidr" {
    type = string
}

variable "data_machine_type" {
    type = string
}

variable "ml_name" {
    type = string
}

variable "ml_tags" {
    type = list(string)
}

variable "ml_count" {
    type = number
}

variable "ml_network_cidr" {
    type = string
}

variable "ml_machine_type" {
    type = string
}

variable "transform_name" {
    type = string
}

variable "transform_tags" {
    type = list(string)
}

variable "transform_count" {
    type = number
}

variable "transform_network_cidr" {
    type = string
}

variable "transform_machine_type" {
    type = string
}

variable "coordinating_name" {
    type = string
}

variable "coordinating_tags" {
    type = list(string)
}

variable "coordinating_count" {
    type = number
}

variable "coordinating_network_cidr" {
    type = string
}

variable "coordinating_machine_type" {
    type = string
}

variable "kibana_name" {
    type = string
}

variable "kibana_tags" {
    type = list(string)
}

variable "kibana_count" {
    type = number
}

variable "kibana_network_cidr" {
    type = string
}

variable "kibana_machine_type" {
    type = string
}

variable "kibana_client_name" {
    type = string
}

variable "kibana_client_tags" {
    type = list(string)
}

variable "kibana_client_count" {
    type = number
}

variable "kibana_client_network_cidr" {
    type = string
}

variable "kibana_client_machine_type" {
    type = string
}

variable "logstash_shipper_name" {
    type = string
}

variable "logstash_shipper_tags" {
    type = list(string)
}

variable "logstash_shipper_count" {
    type = number
}

variable "logstash_shipper_network_cidr" {
    type = string
}

variable "logstash_shipper_machine_type" {
    type = string
}

variable "logstash_indexer_name" {
    type = string
}

variable "logstash_indexer_tags" {
    type = list(string)
}

variable "logstash_indexer_count" {
    type = number
}

variable "logstash_indexer_network_cidr" {
    type = string
}

variable "logstash_indexer_machine_type" {
    type = string
}

variable "bastion_name" {
    type = string
}

variable "bastion_tags" {
    type = list(string)
}

variable "bastion_network_cidr" {
    type = string
}

variable "bastion_machine_type" {
    type = string
}

variable "bastion_port" {
    type = number
}