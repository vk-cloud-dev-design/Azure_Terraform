
resource "azurerm_resource_group" "vikas_storage" {
  name     = "vikas_storage_RGNEW"
  location = "West Europe"
}

resource "azurerm_storage_account" "vikasmainstorage" {
  name                     = "vikasmainsa00025"
  resource_group_name      = azurerm_resource_group.vikas_storage.name
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_resource_group" "vikas_RG2" {

  name = "vikas_RG2"
  location = "West Europe"
}