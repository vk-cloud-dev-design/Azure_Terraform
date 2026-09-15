rg_details = {
  rg1 = {
    name     = "Prod_rg"
    location = "centralindia"
  }
}

vnet_details = {
  vnet1 = {
    name          = "prod_vnet"
    rg1_key       = "rg1"
    location      = "centralindia"
    address_space = ["10.1.0.0/16"]
  }

  vnet2 = {
    name          = "dev_vnet"
    rg1_key       = "rg1"
    location      = "westeurope"
    address_space = ["10.2.0.0/16"]
  }
}

subnet_details = {
  sub1 = {
    name             = "prod_subnet"
    rg1_key          = "rg1"
    vnet_key         = "vnet1"
    address_prefixes = ["10.1.1.0/24"]
  }

  sub2 = {
    name             = "dev_subnet"
    rg1_key          = "rg1"
    vnet_key         = "vnet2"
    address_prefixes = ["10.2.1.0/24"]
  }

  sub3 = {
    name             = "AzureBastionSubnet"
    rg1_key          = "rg1"
    vnet_key         = "vnet1"
    address_prefixes = ["10.1.3.0/26"]
  }
}

nic_details = {
  nic1 = {
    name     = "linux_nic1"
    vnet_key = "vnet1"
    rg1_key  = "rg1"
    sub_key  = "sub1"
  }
  nic2 = {
    name     = "linux_nic2"
    vnet_key = "vnet2"
    rg1_key  = "rg1"
    sub_key  = "sub2"
  }
}

vm_details = {
  vm1 = {
    name           = "linuxvm1"
    vnet_key       = "vnet1"
    rg1_key        = "rg1"
    nic_key        = "nic1"
    vm_size        = "Standard_D2s_v3"
    admin_username = "linux_user"
    admin_password = "infinite@2026#"
    os_disk_name   = "linux-disk1"
  }

  vm2 = {
    name           = "linuxvm2"
    vnet_key       = "vnet2"
    rg1_key        = "rg1"
    nic_key        = "nic2"
    vm_size        = "Standard_D2s_v3"
    admin_username = "linux_user"
    admin_password = "infinite@2026#"
    os_disk_name   = "linux-disk2"
  }
}

vnet_peering_details = {

  vnetpeer1 = {
    name            = "prodtodevpeering"
    rg1_key         = "rg1"
    vnet_key        = "vnet1"
    remote_vnet_key = "vnet2"

  }
  vnetpeer2 = {
    name            = "devtoprodpeering"
    rg1_key         = "rg1"
    vnet_key        = "vnet2"
    remote_vnet_key = "vnet1"
  }
}

nsg_details = {
  nsg1 = {
    name      = "linux_nsg1"
    vnet_key  = "vnet1"
    rg1_key   = "rg1"
    rule_name = "linux_rule1"
  }

  nsg2 = {
    name      = "linux_nsg2"
    vnet_key  = "vnet2"
    rg1_key   = "rg1"
    rule_name = "linux_rule2"
  }
}

nsg_association_details = {
  nsg_cap1 = {
    nic_key = "nic1"
    nsg_key = "nsg1"

  }

  nsg_cap2 = {
    nic_key = "nic2"
    nsg_key = "nsg2"

  }
}

bastion_details = {
  bastion1 = {
    pip_name     = "bastionpip1"
    bastion_name = "bastion1"
    sub_key      = "sub3"
    rg1_key      =  "rg1"
    vnet_key      = "vnet1"
  }
  # bastion2 = {
  #   pip_name     = "pip2"
  #   bastion_name = "bastion2"
  #   subnet_id    = azurerm_subnet.bastion2.id
  # }

}


