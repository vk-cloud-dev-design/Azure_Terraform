resource "azurerm_windows_virtual_machine" "windows" {
  for_each = var.vm_details

  name                = each.value.vm_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  size           = each.value.vm_size
  admin_username = each.value.admin_username
  admin_password = each.value.admin_password

  network_interface_ids = [
    data.azurerm_network_interface.NICs[each.key].id
  ]
  patch_mode = "AutomaticByPlatform"
  os_disk {
    name                 = "${each.value.vm_name}-osdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2025-datacenter-azure-edition"
    version   = "latest"
  }
}

