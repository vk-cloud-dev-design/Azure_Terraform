resource "azurerm_linux_virtual_machine" "linux" {

  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  size           = var.vm_size
  admin_username = var.admin_username

  disable_password_authentication = false
  admin_password                  = var.admin_password

  network_interface_ids = var.network_interface_id
  

  os_disk {
    name                 = var.os_disk_name
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
 