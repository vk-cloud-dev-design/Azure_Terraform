resource_group_name = "rg-google"
location            = "West Europe"

vnet_name = "demo-vnet"

vnet_address_space = [
  "10.0.0.0/16"
]

subnets = {
  frontend_sub = {
    address_prefix = "10.0.1.0/24"
  }

  backend_sub = {
    address_prefix = "10.0.2.0/24"
  }

  db_sub = {
    address_prefix = "10.0.3.0/24"
  }
}

vms = {
  frontend-vm = {
    subnet_name    = "frontend_sub"
    private_ip     = "10.0.1.10"
    vm_size        = "Standard_D2s_v3"
    admin_username = "azureuser"
    admin_password = "Password@1234!"
  }

  backend-vm = {
    subnet_name    = "backend_sub"
    private_ip     = "10.0.2.10"
    vm_size        = "Standard_D2s_v3"
    admin_username = "azureuser"
    admin_password = "Password@1234!"
  }

  # db-vm = {
  #   subnet_name    = "db_sub"
  #   private_ip     = "10.0.3.10"
  #   vm_size        = "Standard_D2s_v3"
  #   admin_username = "azureuser"
  #   admin_password = "Password@1234!"
  # }
}