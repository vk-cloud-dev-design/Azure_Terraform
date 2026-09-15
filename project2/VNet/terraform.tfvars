vnet_details = {
  vnet1 = {
    name                = "VNet1"
    location            = "westeurope"
    resource_group_name = "prod_rg"
    address_space       = ["10.2.0.0/24"]
  }
  vnet2 = {
    name                = "VNet2"
    location            = "centralindia"
    resource_group_name = "dev_rg"
    address_space       = ["10.4.0.0/24"]
  }
}