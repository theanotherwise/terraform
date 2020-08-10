variable "region" {
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

variable "network" {
  type = string
}

variable "gke_cluster_name" {
  type = string
}

variable "gke_cluster_tags" {
  type = list(string)
}

variable "gke_cluster_region" {
  type = string
}

variable "gke_cluster_zones" {
  type = list(string)
}

variable "gke_cluster_init_nodes" {
  type = number
}

variable "gke_cluster_network_cidr" {
  type = string
}

variable "gke_cluster_min_master_version" {
  type = string
}

variable "gke_cluster_machine_type" {
  type = string
}

variable "gke_normal_pool_name" {
  type = string
}

variable "gke_normal_pool_network_cidr" {
  type = string
}

variable "gke_normal_pool_tags" {
  type = list(string)
}

variable "gke_normal_pool_region" {
  type = string
}

variable "gke_normal_pool_zones" {
  type = list(string)
}

variable "gke_normal_pool_machine_type" {
  type = string
}

variable "gke_normal_pool_init_nodes" {
  type = number
}

variable "gke_normal_pool_mix_nodes_nodes" {
  type = number
}

variable "gke_normal_pool_max_nodes_nodes" {
  type = number
}

variable "bastion_name" {
  type = string
}

variable "bastion_tags" {
  type = list(string)
}

variable "bastion_region" {
  type = string
}

variable "bastion_zone" {
  type = string
}

variable "bastion_image" {
  type = string
}

variable "bastion_network_cidr" {
  type = string
}

variable "bastion_machine_type" {
  type = string
}