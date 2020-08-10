variable "network_name" {
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

variable "gke_cluster_subnetwork_name" {
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

variable "dependencies" {
  type = list(string)
}
