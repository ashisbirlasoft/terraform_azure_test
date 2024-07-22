terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      
    }
   
  }
}

provider "azurerm" {
  features {}
  version = ">=2.95.0"
}
 
