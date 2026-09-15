locals {
  common_tags = {
    environment = var.environment
    managed_by  = "terraform"
    project     = "azure-rg-storage"
  }
}