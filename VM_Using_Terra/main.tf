# provider "azurerm" {
#   features {}
# }

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

################################
# VNET MODULE
################################

module "vnet" {
  source = "./modules/vnet"

  vnet_name           = var.vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  address_space = var.vnet_address_space
}

################################
# SUBNET MODULE
################################

module "subnet" {
  source = "./modules/subnet"

  resource_group_name = azurerm_resource_group.rg.name
  vnet_name           = module.vnet.vnet_name

  subnets = var.subnets
}

################################
# VM MODULE
################################

module "vm" {
  source = "./modules/vm"

  for_each = var.vms

  vm_name             = each.key
  vm_size             = each.value.vm_size
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  admin_username = each.value.admin_username
  admin_password = each.value.admin_password

  subnet_id = module.subnet.subnet_ids[each.value.subnet_name]

  private_ip = each.value.private_ip
}