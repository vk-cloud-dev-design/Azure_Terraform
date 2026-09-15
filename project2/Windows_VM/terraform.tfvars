vm_details = {
  vm1 = {
    nic_name            = "windows_nic1"
    location            = "westeurope"
    subnet_name         = "backend-subnet"
    vnet_name           = "VNet1"
    resource_group_name = "prod_rg"

    vm_name        = "windows-vm-01"
    os_type        = "windows"
    vm_size        = "Standard_D2s_v3"
    admin_username = "azureadmin"
    admin_password = "Infinite@2026#"
  }
}


  