# data "azurerm_subnet" "subnet" {
#   for_each = var.subnet_nsg_map

#   name = each.key == "frontend" ? "frontend-subnet" : each.key == "backend"  ? "backend-subnet" : each.key == "bastion"  ? "AzureBastionSubnet" : each.key == "db"       ? "db-subnet" : null

#   virtual_network_name = each.key == "db" ? "VNet2" : "VNet1"
#   resource_group_name  = each.key == "db" ? "dev_rg" : "prod_rg"
# }

# data "azurerm_network_security_group" "nsg" {
#   for_each = var.nsgs

#   name                = each.value.name
#   resource_group_name = each.value.rg
# }