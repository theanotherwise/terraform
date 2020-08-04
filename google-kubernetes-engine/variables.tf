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

variable "gke_name" {
  type = string
}

variable "gke_tags" {
  type = list(string)
}

variable "gke_cluster_init_nodes" {
  type = number
}

variable "gke_cluster_min_master_version" {
  type = string
}

variable "gke_pool_init_nodes" {
  type = number
}

variable "gke_pool_mix_nodes_nodes" {
  type = number
}

variable "gke_pool_max_nodes_nodes" {
  type = number
}

variable "gke_location" {
  type = string
}

variable "gke_machine_type" {
  type = string
}

variable "gke_network_cidr" {
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