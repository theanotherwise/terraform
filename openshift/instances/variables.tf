variable "image" {
  type = string
}

variable "ansible_ssh_keys_pub" {
  type = string
}

variable "openshift_master_name" {
  type = string
}

variable "openshift_master_image" {
  type = string
}

variable "openshift_master_count" {
  type = number
}

variable "openshift_master_tags" {
  type = list(string)
}

variable "openshift_master_network_cidr" {
  type = string
}

variable "openshift_master_machine_type" {
  type = string
}

variable "openshift_master_subnetwork" {
  type = string
}

variable "openshift_master_addresses" {
  type = list(string)
}

variable "openshift_compute_name" {
  type = string
}

variable "openshift_compute_image" {
  type = string
}

variable "openshift_compute_count" {
  type = number
}

variable "openshift_compute_tags" {
  type = list(string)
}

variable "openshift_compute_network_cidr" {
  type = string
}

variable "openshift_compute_machine_type" {
  type = string
}

variable "openshift_compute_subnetwork" {
  type = string
}

variable "openshift_compute_addresses" {
  type = list(string)
}

variable "openshift_infra_name" {
  type = string
}

variable "openshift_infra_image" {
  type = string
}

variable "openshift_infra_count" {
  type = number
}

variable "openshift_infra_tags" {
  type = list(string)
}

variable "openshift_infra_network_cidr" {
  type = string
}

variable "openshift_infra_machine_type" {
  type = string
}

variable "openshift_infra_subnetwork" {
  type = string
}

variable "openshift_infra_addresses" {
  type = list(string)
}

variable "openshift_lb_name" {
  type = string
}

variable "openshift_lb_image" {
  type = string
}

variable "openshift_lb_count" {
  type = number
}

variable "openshift_lb_tags" {
  type = list(string)
}

variable "openshift_lb_network_cidr" {
  type = string
}

variable "openshift_lb_machine_type" {
  type = string
}

variable "openshift_lb_subnetwork" {
  type = string
}

variable "openshift_lb_addresses" {
  type = list(string)
}

variable "dependencies" {
  type = list(string)
}