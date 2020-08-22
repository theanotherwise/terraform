variable "region" {
  type = string
}

variable "zone" {
  type = string
}

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

variable "bastion_name" {
  type = string
}

variable "bastion_network_cidr" {
  type = string
}

variable "vpn_name" {
  type = string
}

variable "vpn_count" {
  type = number
}

variable "vpn_network_cidr" {
  type = string
}

variable "website_name" {
  type = string
}

variable "website_network_cidr" {
  type = string
}