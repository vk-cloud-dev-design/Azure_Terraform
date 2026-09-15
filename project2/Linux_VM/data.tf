data "azurerm_network_interface" "NICs" {
  for_each = var.vm_details

  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
}

