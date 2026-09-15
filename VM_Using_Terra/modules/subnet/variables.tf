variable "resource_group_name" {}
variable "vnet_name" {}

variable "subnets" {
  type = map(object({
    address_prefix = string
  }))
}