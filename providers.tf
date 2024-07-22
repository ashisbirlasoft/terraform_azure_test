terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
       #version = "3.8.0"
      version = ">= 1.35.0"
    }
  }
}
provider "azurerm" {
 
 features {}
}
