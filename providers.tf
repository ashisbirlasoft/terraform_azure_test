/*provider "azurerm" {
  features {}
  version = "~> 2.0"
}*/

terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  cloud {
    organization = "azurevnet"
    workspaces {
      name = "AzureTerraformLabs"
    }
  }
}

provider "azurerm" {
  features {}
}
