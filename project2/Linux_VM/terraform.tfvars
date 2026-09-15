vm_details = {
  vm1 = {
    nic_name            = "linux_nic1"
    location            = "westeurope"
    subnet_name         = "frontend-subnet"
    vnet_name           = "VNet1"
    resource_group_name = "prod_rg"

    vm_name        = "linux-vm-01"
    os_type        = "linux"
    vm_size        = "Standard_D2s_v3"
    admin_username = "linuxuser"
    admin_password = "Infinite@2026#"
  }

  vm2 = {
    nic_name            = "linux_nic2"
    location            = "centralindia"
    subnet_name         = "db-subnet"
    vnet_name           = "VNet2"
    resource_group_name = "dev_rg"

    vm_name        = "linux-vm-02"
    os_type        = "linux"
    vm_size        = "Standard_D2s_v3"
    admin_username = "linuxuser"
    admin_password = "Infinite@2026#"
  }
}