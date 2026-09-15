resource "azurerm_resource_group" "vikas_RG_SA" {
  name     = "vikas_storage_RG"
  location = "centralindia"
}

resource "azurerm_storage_account" "vikas_SA" {
  name                     = "vikassamain008"
  resource_group_name      = azurerm_resource_group.vikas_RG_SA.name
  location                 = azurerm_resource_group.vikas_RG_SA.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  blob_properties {
    versioning_enabled = true
  }
}

resource "azurerm_storage_container" "vikas_container" {
  name                  = "billu420"
  storage_account_id    = azurerm_storage_account.vikas_SA.id
  container_access_type = "container"
}

resource "azurerm_storage_container" "vikas_container01" {
  name                  = "billudon420"
  storage_account_id    = azurerm_storage_account.vikas_SA.id
  container_access_type = "blob"
}

resource "azurerm_storage_container" "vikas_container02" {
  name                  = "statecontainer"
  storage_account_id    = azurerm_storage_account.vikas_SA.id
  container_access_type = "private"
}
