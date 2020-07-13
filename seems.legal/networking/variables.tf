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

variable "frontend_name" {
    type = string
}

variable "frontend_network_cidr" {
    type = string
}

variable "application_name" {
    type = string
}

variable "application_network_cidr" {
    type = string
}

variable "database_name" {
    type = string
}

variable "database_network_cidr" {
    type = string
}

variable "redis_name" {
    type = string
}

variable "redis_network_cidr" {
    type = string
}