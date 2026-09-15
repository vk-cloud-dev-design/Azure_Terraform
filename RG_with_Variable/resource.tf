
resource "azurerm_resource_group" "vikas_var" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_resource_group" "vikas_var1" {
  name     = var.rg_name1
  location = var.location
}