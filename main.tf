# Define the Azure resource group
resource "azurerm_resource_group" "rg" {
  name     = "AzureMigrate"
  location = "South India"
}

# Define the Azure virtual network (VNet)
resource "azurerm_virtual_network" "vnet" {
  name                = "azure-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

# Define a subnet within the VNet
resource "azurerm_subnet" "subnet" {
  name                 = "subnet1"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}
