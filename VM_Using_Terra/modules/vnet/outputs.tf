output "vnet_name" {
  value = azurerm_virtual_network.prod_vnets.name
}

output "vnet_id" {
  value = azurerm_virtual_network.prod_vnets.id
}