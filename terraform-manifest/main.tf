# Configure Azure Provider
provider "azurerm" {
  # Version is optional
  # Terraform recommends to pin to a specific version of provide
  #version = "=2.35.0"
  #version = "~>2.35.0"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = var.name
  location = var.region
}

resource "azurerm_storage_account" "example" {
  name                     = var.storagename
  resource_group_name      = azurerm_resource_group.example.name
  location                 = var.region
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "example" {
  name                  = var.containername
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}