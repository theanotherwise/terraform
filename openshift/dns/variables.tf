variable "network_id" {
  type = string
}

variable "openshift_master_count" {
  type = number
}

variable "openshift_master_internal_addresses" {
  type = list(string)
}

variable "openshift_compute_count" {
  type = number
}

variable "openshift_compute_internal_addresses" {
  type = list(string)
}

variable "openshift_infra_count" {
  type = number
}

variable "openshift_infra_internal_addresses" {
  type = list(string)
}

variable "openshift_lb_count" {
  type = number
}

variable "openshift_lb_internal_addresses" {
  type = list(string)
}

variable "dependencies" {
  type = list(string)
}