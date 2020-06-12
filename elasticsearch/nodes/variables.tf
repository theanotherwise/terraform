variable "node_name" {
    type = string
}

variable "node_machine_type" {
    type = string
}

variable "node_count" {
    type = string
}

variable "node_tags" {
    type = list(string)
}

variable "node_image" {
    type = string
}

variable "terraform_port" {
    type = number
}

variable "terraform_user" {
    type = string
}

variable "terraform_ssh_key_file_path" {
    type = string
}

variable "bastion_internal_address" {
    type = string
}

variable "bastion_external_address" {
    type = string
}

variable "bastion_port" {
    type = number
}

variable "ansible_ssh_key_pub" {
    type = string
}

variable "provider_address" {
    type = list(string)
}

variable "provider_subnetwork_name" {
    type = string
}

variable "dependencies" {
    type = list(string)
}
