resource "azurerm_linux_virtual_machine" "linux" {
  for_each = var.vm_details

  name                = each.value.vm_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  size           = each.value.vm_size
  admin_username = each.value.admin_username

  disable_password_authentication = false
  admin_password                  = each.value.admin_password

  network_interface_ids = [
    data.azurerm_network_interface.NICs[each.key].id
  ]

  os_disk {
    name                 = "${each.value.vm_name}-osdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }
}
 