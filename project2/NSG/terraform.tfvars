nsgs = {
  linux = {
    name     = "linux-nsg"
    location = "westeurope"
    rg       = "prod_rg"

    rules = {
      ssh = {
        priority                   = 100
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      }
    }
  }

#   windows = {
#     name     = "windows-nsg"
#     location = "westeurope"
#     rg       = "prod_rg"

#     rules = {
#       rdp = {
#         priority                   = 100
#         direction                  = "Inbound"
#         access                     = "Allow"
#         protocol                   = "Tcp"
#         source_port_range          = "*"
#         destination_port_range     = "3389"
#         source_address_prefix      = "*"
#         destination_address_prefix = "*"
#       }
#     }
#   }

#   bastion = {
#     name     = "bastion-nsg"
#     location = "westeurope"
#     rg       = "prod_rg"

#     rules = {}   # ✅ REQUIRED (even if empty)
#   }
# }

# subnet_nsg_map = {
#   frontend = "linux"
#   backend  = "windows"
#   db       = "linux"
}