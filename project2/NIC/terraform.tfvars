nic_details = {
  nic1 = {
    name                = "linux_nic1"
    location            = "westeurope"
    subnet_name         = "frontend-subnet"
    vnet_name           = "VNet1"
    resource_group_name = "prod_rg"
  }

  nic2 = {
    name                = "windows_nic1"
    location            = "westeurope"
    subnet_name         = "backend-subnet"
    vnet_name           = "VNet1"
    resource_group_name = "prod_rg"
  }

  nic3 = {
    name                = "linux_nic2"
    location            = "centralindia"
    subnet_name         = "db-subnet"
    vnet_name           = "VNet2"
    resource_group_name = "dev_rg"
  }
}