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

variable "bastion_name" {
    type = string
}

variable "bastion_tags" {
    type = list(string)
}

variable "bastion_count" {
    type = number
}

variable "bastion_network_cidr" {
    type = string
}

variable "bastion_machine_type" {
    type = string
}