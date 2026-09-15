resource "azurerm_network_security_group" "nsg" {
  for_each = var.nsgs

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rg
}


######Create NSG Rules##############

resource "azurerm_network_security_rule" "rules" {
  for_each = {
    for r in flatten([
      for nsg_key, nsg in var.nsgs : [
        for rule_key, rule in nsg.rules : {
          nsg_key  = nsg_key
          rule_key = rule_key
          rule     = rule
        }
      ]
    ]) : "${r.nsg_key}-${r.rule_key}" => r
  }

  name                        = each.value.rule_key
  priority                    = each.value.rule.priority
  direction                   = each.value.rule.direction
  access                      = each.value.rule.access
  protocol                    = each.value.rule.protocol
  source_port_range          = each.value.rule.source_port_range
  destination_port_range     = each.value.rule.destination_port_range
  source_address_prefix      = each.value.rule.source_address_prefix
  destination_address_prefix = each.value.rule.destination_address_prefix

  resource_group_name         = var.nsgs[each.value.nsg_key].rg
  network_security_group_name = azurerm_network_security_group.nsg[each.value.nsg_key].name
}

################NSG → Subnet Association ###################################

# resource "azurerm_subnet_network_security_group_association" "assoc" {
#   for_each = var.subnet_nsg_map

#   subnet_id = data.azurerm_subnet.subnet[each.key].id

#   network_security_group_id = azurerm_network_security_group.nsg[each.value].id
# }

