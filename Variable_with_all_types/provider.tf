terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "4.70.0"
        }
      
    }
    backend "azurerm" {
        resource_group_name = "vikas_storage_RG"
        storage_account_name = "vikassanew008"
        container_name = "billudon420"
        key = "terraform.tfstate"
      
    }
}

provider "azurerm" {
  features {
  }
}