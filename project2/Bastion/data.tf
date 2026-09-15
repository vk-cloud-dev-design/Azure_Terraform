data "azurerm_subnet" "subnets" {

  name                 = "AzureBastionSubnet"
  virtual_network_name = "VNet1"
  resource_group_name  = "prod_rg"
}

