terraform {
  backend "azurerm" {
    resource_group_name              = "vikas_storage_rg"
    storage_account_name             = "vikassamain008"
    container_name                   = "statecontainer"
    key                              = "prod.terraform.tfstate"
  }
}
