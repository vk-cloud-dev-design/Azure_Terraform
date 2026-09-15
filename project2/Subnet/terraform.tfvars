subnet_details = {
  sub1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "prod_rg"
    virtual_network_name = "VNet1"
    address_prefixes     = ["10.2.0.0/28"]
  }
  sub2 = {
    name                 = "backend-subnet"
    resource_group_name  = "prod_rg"
    virtual_network_name = "VNet1"
    address_prefixes     = ["10.2.0.16/28"]
  }
  sub3 = {
    name                 = "db-subnet"
    resource_group_name  = "dev_rg"
    virtual_network_name = "VNet2"
    address_prefixes     = ["10.4.0.0/28"]
  }
  sub4 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "prod_rg"
    virtual_network_name = "VNet1"
    address_prefixes     = ["10.2.0.64/26"]
  }
}

