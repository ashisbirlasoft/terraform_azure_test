terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }

 backend "azurerm" {
    resource_group_name  = "AzureMigratePOCRG"
    storage_account_name = "statefilebucket"
    container_name       = "tffile"
    key                  = "dev.terraform.tffile"
    
  }
}



# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "AzureMigratePOC"
  location = "West Europe"
}
