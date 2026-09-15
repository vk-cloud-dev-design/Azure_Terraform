resource "azurerm_subnet" "prod_subnets" {
  for_each = var.subnets

  name                 = each.key
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes = [ each.value.address_prefix ]
}