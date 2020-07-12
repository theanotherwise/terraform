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