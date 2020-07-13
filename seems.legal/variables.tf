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

variable "frontend_name" {
  type = string
}

variable "frontend_tags" {
  type = list(string)
}

variable "frontend_network_cidr" {
  type = string
}

variable "frontend_machine_type" {
  type = string
}

variable "application_name" {
  type = string
}

variable "application_tags" {
  type = list(string)
}

variable "application_network_cidr" {
  type = string
}

variable "application_machine_type" {
  type = string
}

variable "database_name" {
  type = string
}

variable "database_tags" {
  type = list(string)
}

variable "database_network_cidr" {
  type = string
}

variable "database_machine_type" {
  type = string
}

variable "redis_name" {
  type = string
}

variable "redis_tags" {
  type = list(string)
}

variable "redis_network_cidr" {
  type = string
}

variable "redis_machine_type" {
  type = string
}