variable "nsgs" {
  type = map(object({
    name     = string
    location = string
    rg       = string

    rules = map(object({
      priority                   = number
      direction                  = string
      access                     = string
      protocol                   = string
      source_port_range         = string
      destination_port_range     = string
      source_address_prefix     = string
      destination_address_prefix = string
    }))
  }))
}

# variable "subnet_nsg_map" {
#   type = map(string)
# }