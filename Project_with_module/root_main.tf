module "rg" {
  source = "./module/rg"

  for_each = var.rg_details

  name     = each.value.name
  location = each.value.location

}

module "vnet" {

  source = "./module/VNet"

  for_each = var.vnet_details

  name                = each.value.name
  location            = each.value.location
  resource_group_name = module.rg[each.value.rg1_key].name
  address_space       = each.value.address_space
}

module "subnet" {

  source = "./module/Subnet"

  for_each = var.subnet_details

  name                 = each.value.name
  virtual_network_name = module.vnet[each.value.vnet_key].name
  resource_group_name  = module.rg[each.value.rg1_key].name
  address_prefixes     = each.value.address_prefixes
}

module "nic" {
  source = "./module/NIC"

  for_each = var.nic_details

  name                = each.value.name
  location            = module.vnet[each.value.vnet_key].location
  resource_group_name = module.rg[each.value.rg1_key].name
  subnet_id           = module.subnet[each.value.sub_key].id

  # ip_configuration {
  #   name                          = "internal"
  #   subnet_id                     = module.subnet.id
  #   private_ip_address_allocation = "Dynamic"
}

module "vnet_peering" {

  source = "./module/VNet-Peering"

  for_each = var.vnet_peering_details

  name                      = each.value.name
  resource_group_name       = module.rg[each.value.rg1_key].name
  virtual_network_name      = module.vnet[each.value.vnet_key].name
  remote_virtual_network_id = module.vnet[each.value.remote_vnet_key].vnet_id

}

module "vm" {

  source = "./module/VM"

  for_each = var.vm_details

  name                = each.value.name
  location            = module.vnet[each.value.vnet_key].location
  resource_group_name = module.rg[each.value.rg1_key].name

  vm_size        = each.value.vm_size
  admin_username = each.value.admin_username

  # disable_password_authentication = false
  admin_password = each.value.admin_password

  network_interface_id = [module.nic[each.value.nic_key].id]
  os_disk_name         = each.value.name



  # os_disk {
  #   name                 = var.os_disk_name
  #   caching              = "ReadWrite"
  #   storage_account_type = "Standard_LRS"
  # }

  # source_image_reference {
  #   publisher = "Canonical"
  #   offer     = "ubuntu-24_04-lts"
  #   sku       = "server"
  #   version   = "latest"
  # }
}

module "nsg" {
  source = "./module/NSG"

  for_each = var.nsg_details

  name                = each.value.name
  location            = module.vnet[each.value.vnet_key].location
  resource_group_name = module.rg[each.value.rg1_key].name
  rule_name           = each.value.rule_name

}

module "nsg_association" {
  source = "./module/NSG_Association"

  for_each = var.nsg_association_details

  network_interface_id = module.nic[each.value.nic_key].id
  security_group_id    = module.nsg[each.value.nsg_key].id

}

module "bastion" {
  source = "./module/Bastion"

  for_each = var.bastion_details

  pip_name            = each.value.pip_name
  bastion_name        = each.value.bastion_name
  subnet_id           = module.subnet[each.value.sub_key].id
  resource_group_name = module.rg[each.value.rg1_key].name
  location            = module.vnet[each.value.vnet_key].location
}


