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

variable "vpn_name" {
  type = string
}

variable "vpn_count" {
  type = number
}

variable "vpn_tags" {
  type = list(string)
}

variable "vpn_network_cidr" {
  type = string
}

variable "vpn_machine_type" {
  type = string
}

variable "website_name" {
  type = string
}

variable "website_tags" {
  type = list(string)
}

variable "website_network_cidr" {
  type = string
}

variable "website_machine_type" {
  type = string
}