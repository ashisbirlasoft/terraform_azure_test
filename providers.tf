terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      #version = "=2.46.0"
       version = "2.52.0"
    }
  }
}
provider "azurerm" {
  features {}
}
