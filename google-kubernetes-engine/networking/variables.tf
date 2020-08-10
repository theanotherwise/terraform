variable "network" {
  type = string
}

variable "terraform_user" {
  type = string
}

variable "terraform_ssh_keys_pub" {
  type = string
}

variable "ansible_user" {
  type = string
}

variable "ansible_ssh_keys_pub" {
  type = string
}

variable "gke_cluster_name" {
  type = string
}

variable "gke_cluster_region" {
  type = string
}

variable "gke_cluster_network_cidr" {
  type = string
}

variable "gke_normal_pool_name" {
  type = string
}

variable "gke_normal_pool_region" {
  type = string
}

variable "gke_normal_pool_network_cidr" {
  type = string
}

variable "bastion_name" {
  type = string
}

variable "bastion_region" {
  type = string
}

variable "bastion_zone" {
  type = string
}

variable "bastion_network_cidr" {
  type = string
}