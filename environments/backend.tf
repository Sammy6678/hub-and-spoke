terraform {
  backend "azurerm" {
    resource_group_name  = "backend-rg"
    storage_account_name = "backendstore26"
    container_name       = "backendcontainer"
    key                  = "terraform.tfstate"
  }
}
