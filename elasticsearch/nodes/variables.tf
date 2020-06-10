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

variable "terraform_user" {
    type = string
}

variable "bastion_address" {
    type = string
}

variable "ansible_ssh_keys_pub" {
    type = string
}

variable "gcp_address" {
    type = list(string)
}

variable "gcp_subnetwork" {
    type = string
}

variable "dependencies" {
    type = list(string)
}
