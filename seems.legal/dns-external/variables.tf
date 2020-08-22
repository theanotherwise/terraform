variable "bastion_name" {
  type = string
}

variable "bastion_address" {
  type = string
}

variable "website_address" {
  type = string
}

variable "dependencies" {
  type = list(string)
}