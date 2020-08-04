variable "network_name" {
  type = string
}

variable "subnetwork_name" {
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

variable "dependencies" {
  type = list(string)
}
