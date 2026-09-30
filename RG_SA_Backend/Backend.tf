terraform {
  backend "azurerm" {
    resource_group_name  = "vikas_storage_RG01"
    storage_account_name = "vikassamainsa001"
    container_name       = "dev-terra-backend"
    key                  = "prod.terraform.tfstate"
  }
}
