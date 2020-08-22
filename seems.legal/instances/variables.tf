variable "image" {
  type = string
}

variable "ansible_ssh_key_pub" {
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

variable "website_subnetwork" {
  type = string
}

variable "website_address" {
  type = string
}

variable "dependencies" {
  type = list(string)
}