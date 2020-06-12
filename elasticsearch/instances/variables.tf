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

variable "terraform_ssh_keys_pub" {
    type = string
}

variable "ansible_user" {
    type = string
}

variable "ansible_ssh_keys_pub" {
    type = string
}

variable "kibana_name" {
    type = string
}

variable "kibana_tags" {
    type = list(string)
}

variable "kibana_count" {
    type = number
}

variable "kibana_network_cidr" {
    type = string
}

variable "kibana_machine_type" {
    type = string
}