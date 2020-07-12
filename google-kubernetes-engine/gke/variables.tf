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
