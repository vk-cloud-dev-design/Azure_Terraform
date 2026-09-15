resource "azurerm_resource_group" "rg" {
  for_each = toset(var.resource_groups)

  name     = each.value
  location = "East US"
}

# resource "azurerm_storage_account" "sa" {
#   for_each = var.storage_map
#   name                     = each.key
#   resource_group_name      = each.value
#   location                 = "East US"
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }


# resource "azurerm_storage_container" "test" {
#     for_each =  = var.vikas_var
#     storage_account_id = "/subscriptions/8117361a-4be6-426c-ab5f-452feae4f5c5/resourceGroups/vikas_storage_RG/providers/Microsoft.Storage/storageAccounts/vikassanew008"
#     name = "vikas-${count.index}"
#     container_access_type = "blob"
# }