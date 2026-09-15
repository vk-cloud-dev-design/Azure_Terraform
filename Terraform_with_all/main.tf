resource "azurerm_resource_group" "vikas_rg" {
    for_each = {
           vikas_rg = "centralindia", 
           rahul_rg = "westus", 
           rohit_rg = "eastus", 
           }
    name = each.key
    location = each.value
}
