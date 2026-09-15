#subscription_id = "ca0e89ec-4b6f-43aa-93b2-058a2da5be0d"

environment = "dev"

resource_groups = {
  rg1 = {
    name     = "dev-rg"
    location = "Central India"
  }

  rg2 = {
    name     = "shared-rg"
    location = "Central India"
  }
}

storage_accounts = {
  st1 = {
    name               = "devstorage001abc"
    resource_group_key = "rg1"
    location           = "Central India"
    account_tier       = "Standard"
    replication_type   = "LRS"
  }

  st2 = {
    name               = "sharedstorage001abc"
    resource_group_key = "rg2"
    location           = "Central India"
    account_tier       = "Standard"
    replication_type   = "GRS"
  }
}


containers = {
  con1 = {
    name               = "prod-con"
    storage_accounts_key       = "st1"
    container_access_type   = "private"
  }

    con2 = {
    name               = "dev-con"
    storage_accounts_key       = "st2"
    container_access_type   = "private"
  }
}

###########################################subnet+Vnets #######################################################

vnets = {
  vnet1 = {
    name               = "dev-vnet"
    resource_group_key = "rg1"
    location           = "Central India"
    address_space      = ["10.0.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    name               = "frontend-subnet"
    vnet_key           = "vnet1"
    resource_group_key = "rg1"
    address_prefix     = ["10.0.1.0/24"]
  }

  subnet2 = {
    name               = "backend-subnet"
    vnet_key           = "vnet1"
    resource_group_key = "rg1"
    address_prefix     = ["10.0.2.0/24"]
  }
}