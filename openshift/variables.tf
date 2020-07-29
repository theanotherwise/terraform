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