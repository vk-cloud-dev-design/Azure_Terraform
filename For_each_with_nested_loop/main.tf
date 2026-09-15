resource "azurerm_resource_group" "rg" {

  for_each = var.resource_groups

  name     = each.value
  location = var.location[each.value]
}


resource "azurerm_storage_account" "sa" {

  for_each = var.storage_accounts

  name                     = each.value
  resource_group_name      = azurerm_resource_group.rg[each.key].name
  location                 = azurerm_resource_group.rg[each.key].location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


resource "azurerm_storage_container" "container" {

  for_each = var.containers

  name                  = each.value
  storage_account_id    = azurerm_storage_account.sa[each.key].id
  container_access_type = var.container_access_type[each.value]
}