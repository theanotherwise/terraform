variable "image" {
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

variable "frontend_subnetwork" {
  type = string
}

variable "frontend_address" {
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

variable "application_subnetwork" {
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

variable "database_subnetwork" {
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

variable "redis_subnetwork" {
  type = string
}

variable "dependencies" {
  type = list(string)
}