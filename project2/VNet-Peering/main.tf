resource "azurerm_virtual_network_peering" "Peer_rule1" {
  for_each = var.VNet_Peer_details
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name

  remote_virtual_network_id = data.azurerm_virtual_network.vnets[each.key].id

  allow_virtual_network_access = true
}



