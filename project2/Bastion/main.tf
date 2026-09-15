resource "azurerm_public_ip" "PIP" {
  name                = "Project_pip"
  resource_group_name = "prod_rg"
  location            = "westeurope"
  allocation_method   = "Static"
}

resource "azurerm_bastion_host" "bastion_jump" {
  for_each            = var.bastion_details
  name                = "Bastion_jump_VM"
  location            = "westeurope"
  resource_group_name = "prod_rg"

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.subnets.id
    public_ip_address_id = azurerm_public_ip.PIP.id
  }
}