# variable "subscription_id" {
#   type = string
# }

variable "environment" {
  type = string
}

variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "storage_accounts" {
  type = map(object({
    name               = string
    resource_group_key = string
    location           = string
    account_tier       = string
    replication_type   = string
  }))
}


variable "containers" {
  type = map(object({
    name               = string
    storage_accounts_key = string
    container_access_type = string

  }))
}

###############################Subnet--Virtual Network ###########################

variable "vnets" {
  type = map(object({
    name               = string
    resource_group_key = string
    location           = string
    address_space      = list(string)
  }))
}

variable "subnets" {
  type = map(object({
    name               = string
    vnet_key           = string
    resource_group_key = string
    address_prefix     = list(string)
  }))
}