resource "azurerm_resource_group" "dev_env_rg" {
  name = "var.dev"
  location = "var.location"
}

resource "azurerm_storage_account" "dev_sa" {
  resource_group_name = azurerm_resource_group.dev_env_rg.name
  name = var.dev
  location = var.location
  account_replication_type = "LRS"
  account_tier = "Standard"

blob_properties {
    versioning_enabled = var.qa
}
}


resource "azurerm_storage_container" "dev_container" {
    name = var.dev
    storage_account_id = azurerm_storage_account.dev_sa.id
    container_access_type = "private"
  
}
