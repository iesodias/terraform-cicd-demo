provider "azurerm" {
  features {}
}

# Create Resource Group 
resource "azurerm_resource_group" "my_demo_rg1" {
  location = "eastus"
  name     = "my-demo-rg1"

  tags = {
    "environment"  = "k8sdev"
    "environment1" = "k8sde2v"
  }

}