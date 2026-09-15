variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}

variable "subnets" {
  type = map(object({
    address_prefix = string
  }))
}

variable "vms" {
  type = map(object({
    subnet_name    = string
    private_ip     = string
    vm_size        = string
    admin_username = string
    admin_password = string
  }))
}