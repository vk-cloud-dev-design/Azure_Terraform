terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.68.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "vikas_storage_RG"
    storage_account_name = "vikassamain008"
    container_name       = "statecontainer"
    key                  = "nested.tfstate"
  }
}

provider "azurerm" {
  features {

  }
}
