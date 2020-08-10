variable "bastion_image" {
  type = string
}

variable "bastion_name" {
  type = string
}

variable "bastion_tags" {
  type = list(string)
}

variable "bastion_zone" {
  type = string
}

variable "bastion_network_cidr" {
  type = string
}

variable "bastion_machine_type" {
  type = string
}

variable "provider_subnetwork_name" {
  type = string
}

variable "provider_address" {
  type = string
}

variable "dependencies" {
  type = list(string)
}
