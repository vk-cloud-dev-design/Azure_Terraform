resource "azurerm_resource_group" "_001" {
 name    =  "vikas_storage_world_new"  
 location = "West US"
}

resource "azurerm_resource_group" "vikas_RG_old_002" {
 name    =  "vikas_storage_world_new"  
 location = "East US"
}