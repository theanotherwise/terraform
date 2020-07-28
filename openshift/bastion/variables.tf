variable "image" {
    type = string
}

variable "terraform_ssh_keys_pub" {
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

variable "provider_subnetwork_name" {
    type = string
}

variable "provider_address" {
    type = string
}

variable "dependencies" {
    type = list(string)
}
