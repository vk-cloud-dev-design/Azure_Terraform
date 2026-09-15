VNet_Peer_details = {
  Peer1 = {
    name                 = "VNet1-to-VNet2"
    resource_group_name  = "Prod_rg"
    virtual_network_name = "VNet1"
    remote_vnet_name     = "VNet2"
    remote_rg            = "dev_rg"
  }

  Peer2 = {
    name                 = "VNet2-to-VNet1"
    resource_group_name  = "dev_rg"
    virtual_network_name = "VNet2"
    remote_vnet_name     = "VNet1"
    remote_rg            = "Prod_rg"
  }
}