data "azurerm_virtual_network" "vnets" {
  for_each = var.VNet_Peer_details

  name                = each.value.remote_vnet_name
  resource_group_name = each.value.remote_rg
}

